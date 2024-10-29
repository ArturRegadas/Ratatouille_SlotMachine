import Felgo 4.0
import QtQuick 2.0
import "slotMachine"

GameWindow{
    id: gameWindow

    //declare the scene as active
    activeScene: scene

    //main window size
    width: 920
    height: 640
    Scene {
        id: scene
        width: 570
        height: 360
        // Bet
        property int betStack: 5 // valor da bet
        property int previous_betStack:5
        //
        property int creditStack: 400 // quantia na carteira
        property int previous_creditStack:0// última quantidade anterior da carteira antes do spin
        property int additionalSpin:0 // Spins adicionais
        property int sumCreditStack:0 // Soma total de vitórias adiquiridas entre os prêmios 
        //
        property int visibelIndex:0 // Index de exibição as linhas
        //
        property var combinationsColors:[]
        property var combinationsNames:[]
        property var combinationsInt:[]
        //Animação do crédito caindo
        Behavior on creditStack{
            PropertyAnimation{
                duration: 1000
            }
        }
        //
        Timer{
            id: sleep
            interval:700
            onTriggered: {
                if(scene.visibelIndex>winCheck.currentLines.length-1){
                    sleep.stop()
                    scene.visibelIndex=0
                    winCheck.hideLines()
                    if(scene.additionalSpin)scene.startSlotMachine()
                } else{
                    winCheck.hideLines()
                    winCheck.currentLines[scene.visibelIndex].visible=true
                    ++scene.visibelIndex
                    sleep.restart()
                }
                // console.log(scene.visibelIndex,winCheck.currentLines.length) // Caso teste
            }
        }
        //
        Rectangle{ // Para caso da janela ser maior que a scene, esse gradiente irá prencher o fundo
            anchors.fill: scene.gameWindowAnchorItem
            gradient: Gradient{
                GradientStop{
                    position: 0.0
                    color: "#21b0db"
                }
                GradientStop{
                    position: 1.0
                    color: "#1859c9"
                }
            } 
        }

        Image{ // Imagem da lateral esquerda
            x:-20
            y: parent.verticalCenter
            source: "../assets/backgroundLeftMain.jpg"
            height: scene.gameWindowAnchorItem.height
            width: (Math.round(Math.round(slotMachine.height/slotMachine.rowCount)/80*67)*5)/2
        }

        Image{
            x:parent.width-150 // Imagem da lateral direita
            y: parent.verticalCenter
            source: "../assets/backgroundRightMain.jpg"
            height: scene.gameWindowAnchorItem.height
            width: (Math.round(Math.round(slotMachine.height/slotMachine.rowCount)/80*67)*5)/2
        }

        Ratatouille{ //Roleta
            id: slotMachine
            anchors.verticalCenter: scene.verticalCenter
            anchors.horizontalCenter: scene.horizontalCenter
            //
            height: scene.gameWindowAnchorItem.height-topBar.height-bottomBar.height-10
            defaultItemHeight: Math.round(slotMachine.height/slotMachine.rowCount)
            defaultReelWidth: Math.round(defaultItemHeight/80*67)
            spinVelocity: Math.round(defaultItemHeight/80*750)
            //
            onSpinEnded: scene.endedSlotMachine()
            onSpinStarted:slotMachine.reelStopDelay=utils.generateRandomValueBetween(!bottomBar.fastActive&&!scene.additionalSpin?350:bottomBar.fastActive&&!scene.additionalSpin?100:250,!bottomBar.fastActive&&!scene.additionalSpin?750:bottomBar.fastActive&&!scene.additionalSpin?100:250)
        }

        WinAnalysis{
            id:winCheck
            anchors.verticalCenter: slotMachine.verticalCenter
            anchors.horizontalCenter: slotMachine.horizontalCenter
            height: slotMachine.height
            width: Math.round(height/240*408)
        }

        TopBar { // Aba acima da roleta
           id: topBar
           width: scene.gameWindowAnchorItem.width
           anchors.top: scene.gameWindowAnchorItem.top
           anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
        }

        BottonBar{ // Aba abaixo da roleta
            id: bottomBar
            width: scene.gameWindowAnchorItem.width
            anchors.bottom: scene.gameWindowAnchorItem.bottom
            anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
            onAutoClicked: scene.autoStartSlotMachine()
            onFastClicked: scene.fastSlotMachine()
            onStartClicked:scene.startSlotMachine()
            onDecrementClicked: scene.decrementBetInSlotMachine()
            onIncrementClicked: scene.incrementBetInSlotMachine()
            onMaxValueClicked: scene.maxBetInSlotMachine()
            intTotalAward: scene.previous_creditStack
        }

        BoxWinning{
            id:boxWinning
            anchors.centerIn: parent
            width:scene.gameWindowAnchorItem.width
            height:scene.gameWindowAnchorItem.height
            visible: false
        }

        // Funções
        // Gira a caça-níquel
        function startSlotMachine(){
            if(!slotMachine.spinning&&scene.betStack<=scene.creditStack){
                scene.sumCreditStack+=scene.previous_creditStack-scene.sumCreditStack
                if(!scene.additionalSpin){
                    scene.previous_creditStack=0;
                    scene.previous_betStack=scene.betStack
                    //
                    scene.sumCreditStack-=scene.previous_betStack
                    if(scene.sumCreditStack%2)scene.sumCreditStack-=5
                    scene.creditStack+=scene.sumCreditStack
                }
                bottomBar.startActive= !bottomBar.autoActive
                //
                if(!scene.previous_creditStack){
                    bottomBar.intTotalAward=0
                    bottomBar.resetAnimations()
                }
                //
                winCheck.reset()
                slotMachine.spin(utils.generateRandomValueBetween(300,750))
            }
        }

        //Função achamada após o termino da rodada
        function endedSlotMachine(){
            var won=winCheck.validate(slotMachine,scene.previous_betStack)
            console.log(scene.additionalSpin,"/") // Caso de teste
            if(won){
                if(scene.additionalSpin>1){
                    winCheck.currentLines[0].visible=true
                    scene.visibelIndex=1
                    if(!combinationsNames.length)sleep.start()
                }
                bottomBar.autoActive=false
                bottomBar.startActive=false
                bottomBar.resetAnimations()
                bottomBar.intTotalAward+=scene.previous_creditStack-bottomBar.intTotalAward
            } else if(((bottomBar.autoActive&&scene.previous_betStack<=scene.creditStack)|scene.additionalSpin)&&!scene.combinationsNames.length){
                startSlotMachine()
            }else{
                bottomBar.autoActive=false
            }
            if(scene.combinationsNames.length){
                boxWinning.visible=true
                for(var i=0;i<combinationsNames.length;++i){
                    boxWinning.createBlocks(combinationsNames[i],combinationsColors[i],combinationsInt[i])
                }
                combinationsNames=[]
                combinationsInt=[]
                combinationsColors=[]
            }
            console.log(combinationsNames,combinationsInt,combinationsInt)
            if(scene.additionalSpin){
                --scene.additionalSpin
                if(!additionalSpin)scene.sumCreditStack=0
                bottomBar.autoActive=false
            }
            if(!scene.additionalSpin){
                // bottomBar.intTotalAward+=scene.previous_creditStack-bottomBar.intTotalAward
                bottomBar.startActive=false
                // console.log(scene.creditStack,scene.previous_creditStack,scene.betStack); // Caso de teste
            }
        }

        //Gira automaticamente a caça níquel
        function autoStartSlotMachine() {
            bottomBar.autoActive = !bottomBar.autoActive
            startSlotMachine()
        }
        //
        // Modo rápido
        function fastSlotMachine(){
            bottomBar.fastActive = !bottomBar.fastActive
        }

        // Aumento o valor apostado
        function incrementBetInSlotMachine(){
            if (betStack+5 <= creditStack)
                betStack+=5
        }


        // Domunui o valor a ser apostado
        function decrementBetInSlotMachine(){
            if (betStack-5 >= 5)
                betStack-=5
        }

        // Define o valor apostado para a quantia da carteira
        function maxBetInSlotMachine(){
            let current_value = creditStack
            for(let i = current_value; i>current_value-6; i--){
                if (i%5===0)
                    betStack=i
                    break
            }                
        }
    }
}

