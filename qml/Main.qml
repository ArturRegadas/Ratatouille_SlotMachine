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
        // anchors.fill: parent
        width: 500
        height: 360
        property int betStack: 5 // valor da bet
        property int creditStack: 400 // quantia na carteira

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
        //Possíveis imagens de fundo
        Image{  //Possível imagem de fundo principal
            anchors.fill: scene
            width: scene.gameWindowAnchorItem
            source: "../assets/backgroundMain.png"
            x:30
        }
        //
        Ratatouille{ //Roleta
            id: slotMachine
            y:47
            anchors.centerIn: scene
            //
            height: scene.gameWindowAnchorItem.height-topBar.height-bottomBar.height-10
            defaultItemHeight: Math.round(slotMachine.height/slotMachine.rowCount)
            defaultReelWidth: Math.round(defaultItemHeight/80*67)
            spinVelocity: Math.round(defaultItemHeight/80*750)
            //
            onSpinEnded: scene.endedSlotMachine()
            onSpinStarted: {
                slotMachine.reelStopDelay=utils.generateRandomValueBetween(350,700)
            }
        }
        WinAnalysis{
            id:winCheck
            height: slotMachine.height
            width: Math.round(height/240*408)
            anchors.centerIn:slotMachine
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
                onStartClicked: scene.startSlotMachine()
                onDecrementClicked: scene.decrementBetInSlotMachine()
                onIncrementClicked: scene.incrementBetInSlotMachine()
                onMaxValueClicked: scene.maxBetInSlotMachine()
        }
        // Funções
        // Gira a caça-níquel
        function startSlotMachine(){
            if(!slotMachine.spinning&&scene.betStack<=scene.creditStack){
                bottomBar.startActive=true
                scene.creditStack-=scene.betStack
                winCheck.reset()
                slotMachine.spin(utils.generateRandomValueBetween(500,1000))
            }
        }

        //Função achamada após o termino da rodada
        function endedSlotMachine(){
            bottomBar.startActive=false
            var award=winCheck.validate(slotMachine)
            if(award){
                winCheck.displayWinningLines()
            } else if(bottomBar.autoActive){
                startSlotMachine()
            }
        }

        //Gira automaticamente a caça níquel
        function autoStartSlotMachine() {
            bottomBar.autoActive = !bottomBar.autoActive
            startSlotMachine()
        }

        // Modo rápido
        function fastSlotMachine(){
            bottomBar.fastActive = !bottomBar.fastActive
            if(bottomBar.fastActive)
                console.log("fast active")

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

