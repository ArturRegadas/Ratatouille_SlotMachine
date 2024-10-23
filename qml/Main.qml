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


    BackgroundMusic{
         id: bgSound
         source: Qt.resolvedUrl("../assets/Sounds/LaFestin.wav")
         autoPlay: true
         //loops: 1
       }
        // command to play the sound clickSound.play()


    BackgroundMusic{
         id: clickEffect
         source: Qt.resolvedUrl("../assets/Sounds/.wav")
         autoPlay: false
         loops: 1
       }


    BackgroundMusic{
         id: stopLine
         source: Qt.resolvedUrl("../assets/Sounds/.wav")
         autoPlay: false
         loops: 1
       }

    BackgroundMusic{
         id: moeneyEffect
         source: Qt.resolvedUrl("../assets/Sounds/.wav")
         autoPlay: false
         loops: 1
       }



    MouseArea{
        anchors.fill: parent
        //onClicked: clickSound.play()
    }

    Scene {
        id: scene
        width: 570
        height: 360
        // Bet
        property int betStack: 5 // valor da bet
        property int previous_betStack
        property int creditStack: 400 // quantia na carteira

        //Animação do crédito caindo
        Behavior on creditStack{
            PropertyAnimation{
                duration: 1000
            }
        }

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
            anchors.topMargin: -10
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
            anchors.verticalCenter: slotMachine.verticalCenter
            anchors.horizontalCenter: slotMachine.horizontalCenter
            id:winCheck
            height: slotMachine.height
            width: Math.round(height/240*408)
        }
        TopBar { // Aba acima da roleta
           id: topBar
           width: scene.gameWindowAnchorItem.width
           anchors.top: scene.gameWindowAnchorItem.top
           anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
        }

        /*/


        /*/
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
                scene.previous_betStack=scene.betStack
                bottomBar.startActive= !bottomBar.autoActive
                scene.creditStack-=scene.betStack
                winCheck.reset()
                slotMachine.spin(utils.generateRandomValueBetween(bottomBar.fastActive?2:500,bottomBar.fastActive?0: 1000))
            }
        }

        //Função achamada após o termino da rodada
        function endedSlotMachine(){
            bottomBar.startActive=false
            var won=winCheck.validate(slotMachine,scene.previous_betStack)
            if(won){
                winCheck.displayWinningLines()
                scene.creditStack+=winCheck.award
                bottomBar.autoActive=false
                bottomBar.startActive=false
            } else if(bottomBar.autoActive&&scene.betStack<=scene.creditStack){
                startSlotMachine()
            } else{
                bottomBar.autoActive=false
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

