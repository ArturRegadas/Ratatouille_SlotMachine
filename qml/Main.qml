import Felgo 4.0
import QtQuick 2.0
import "slotMachine"
import QtQuick.Controls 2.15


GameWindow{
    id: gameWindow

    //declare the scene as active
    activeScene: scene


    //main window size
    width: 920
    height: 640


    //Usar GameSoundEffect no web
    //BackgroundMusic no resto
    //verificar se tem como rodar 2 BackgroundMusic ao mesmo tempo
    //Fazer 2 versoes do jogo, uma web e uma resto


    //o som ta brasileirado
    //a pura grambiarra

    //chat gpt é muito ruim no jogo da velha puta merda

    // chat O
    // Eu X

    //|X| |O|
    //| |X| |
    //| |O|X|

    //Vai entender :/

    /*/
      Lista de sons:
      bgSound = musica de fundo do rataotuille
      clickEffect = efeito ao clickar nos botoes
      stopLine = efeito ao cada linha parar
      moneyEffect = ao ganhar qualquer quantia
      bgGameSound = musica de fundo ao iniciar
      popUpMoney = som ao comecar de dinheiro do popUp
      popUpBG = musica de fundo do pop up
      extraBGusic = musica do fundo do entra Game

    /*/

    //NA versao web trocar para GameSoundEffect
    //Dai em diante os sons
    //cleancode o krl, foi mal cris


    Sounds{
        id: functionSounds
    }


    Chronometer{
        id: restTimer
    }

    PopUpWin{
        id: myPopup
    }



    MouseArea{
        anchors.fill: parent
        onClicked:{
            functionSounds.stopJackPot()
            //myPopup.openPopup()
        }
        // Define o popup como visível ao clicar no botão
        //onClicked: clickSound.play()
    }

    Scene {
        id: scene
        width: 570
        height: 360
        // Bet
        property int betStack: 100 // valor da bet
        property int previous_betStack:5
        //
        property int creditStack: 10000 // quantia na carteira
        property int previous_creditStack:0// última quantidade anterior da carteira antes do spin
        property int additionalSpin:0 // Spins adicionais
        property int sumCreditStack:0 // Soma total de vitórias adiquiridas entre os prêmios 
        property int minbet: 100
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
            property bool firtColumnRun: true

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
            
            onSpinStarted: {
                /*/

                  Aqui o clean code deu merda
                  Sinceramente eu nao sei como e nem porque esta funcionando
                  nao mexer, se der merda chatgpt vai pocar

                /*/
                let timeMs = utils.generateRandomValueBetween(!bottomBar.fastActive&&!scene.additionalSpin?350:bottomBar.fastActive&&!scene.additionalSpin?100:250,!bottomBar.fastActive&&!scene.additionalSpin?750:bottomBar.fastActive&&!scene.additionalSpin?100:250) //.......................................................tempo em ms
                restTimer.intervalval = timeMs //.....................................atribui à classe
                //utils.generateRandomValueBetween(350,700)...........................Numero Aleatorio
                restTimer.qtdRepeat = 4 //...A 1 repeticao tem 1000 ms as outras 4 tem timeMs de tempo
                slotMachine.reelStopDelay= timeMs //................Atribuição a classe da slotMachine
                restTimer.playAudTimer() //.............................funcao que faz umas proezas ai
                restTimer.playCount = 0 //......................reseta o contador de audios -repetica-
            }
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
            functionSounds.playStartMusicBG()
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
                functionSounds.playSimpleWin()
                if (won >= scene.betStack*5){
                    functionSounds.playJackPot()
                    myPopup.flyMoney=0
                    myPopup.flyMoney=won
                    myPopup.openPopup()

                }
            } else if(((bottomBar.autoActive&&scene.previous_betStack<=scene.creditStack)|scene.additionalSpin)&&!scene.combinationsNames.length){ // Mexer aqui
              // o delay tava dando conflito com os audios, entao ao inves de recomecar automaticamente, isso fica dentro
              // de um timer, que so vai parar quando o estado do autobuttom estiver false
              //a gente faz o que faz e refaz o que tem que refazer
              // mas assim, poderia tar pior, deus meu perdoe
                startSlotMachine()
            }else{
                bottomBar.autoActive=false
                // bottomBar.autoActive=bottomBar.autoActive
            }
            // bottomBar.startActive=false
            autoStartTimer.start()
            fastartTimer.start()
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
        Timer{
            id: fastartTimer
            interval: 500 // Intervalo de 500 ms (0.5 segundos)
            repeat: false // Define o timer como repetitivo
            running: false // Inicialmente parado


            onTriggered: {
                bottomBar.delay = true
            }
        }



        Timer{
            id: autoStartTimer
            interval: 1000 // Intervalo de 500 ms (0.5 segundos)
            repeat: false // Define o timer como repetitivo
            running: false // Inicialmente parado


            onTriggered: {
                if (bottomBar.autoActive){
                    scene.startSlotMachine()

                }
                else{
                    autoStartTimer.stop()
                }
        }

        //Gira automaticamente a caça níquel
        function autoStartSlotMachine() {
            //functionSounds.playClickSoundEffect()
            bottomBar.autoActive = !bottomBar.autoActive
            startSlotMachine()
            autoStartTimer.start()



        }
        //
        // Modo rápido
        function fastSlotMachine(){
            bottomBar.fastActive = !bottomBar.fastActive
        }

        // Aumento o valor apostado
        function incrementBetInSlotMachine(){
           functionSounds. playClickSoundEffect()
            if (betStack+scene.minbet <= creditStack)
                betStack+=scene.minbet
        }


        // Domunui o valor a ser apostado
        function decrementBetInSlotMachine(){
            functionSounds.playClickSoundEffect()
            if (betStack-scene.minbet >= scene.minbet)
                betStack-=scene.minbet
        }

        // Define o valor apostado para a quantia da carteira
        function maxBetInSlotMachine(){
            functionSounds.playClickSoundEffect()

            let current_value = creditStack
            for(let i = current_value; i>current_value-scene.minbet-1; i--){
                if (i%scene.minbet===0)
                    betStack=i
                    break
            }                
        }
    }
}

