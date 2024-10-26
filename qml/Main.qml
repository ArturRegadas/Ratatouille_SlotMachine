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


    Sounds{
        id: functionSounds
    }


    Chronometer{
        id: restTimer
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
            property bool firtColumnRun: true

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
            onSpinEnded:{
                scene.endedSlotMachine()
            }
            onSpinStarted: {
                /*/

                  Aqui o clean code deu merda
                  Sinceramente eu nao sei como e nem porque esta funcionando
                  nao mexer, se der merda chatgpt vai pocar

                /*/
                let timeMs = 500 //.......................................................tempo em ms
                restTimer.intervalval = timeMs //.....................................atribui à classe
                //utils.generateRandomValueBetween(350,700)...........................Numero Aleatorio
                restTimer.qtdRepeat = 4 //...A 1 repeticao tem 1000 ms as outras 4 tem timeMs de tempo
                slotMachine.reelStopDelay= timeMs //................Atribuição a classe da slotMachine
                restTimer.playAudTimer() //.............................funcao que faz umas proezas ai
                restTimer.playCount = 0 //......................reseta o contador de audios -repetica-
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
            functionSounds.playStartMusicBG()
            if(!slotMachine.spinning&&scene.betStack<=scene.creditStack){
                scene.previous_betStack=scene.betStack
                //bottomBar.startActive= !bottomBar.autoActive
                scene.creditStack-=scene.betStack
                winCheck.reset()
                slotMachine.spin(utils.generateRandomValueBetween(bottomBar.fastActive?2:500,bottomBar.fastActive?0: 1000))
            }
        }

        //Função achamada após o termino da rodada
        function endedSlotMachine(){
            //playClickSoundEffect()
            bottomBar.startActive=false
            var won=winCheck.validate(slotMachine,scene.previous_betStack)
            if(won){
                winCheck.displayWinningLines()
                scene.creditStack+=winCheck.award
                bottomBar.autoActive=true
                bottomBar.startActive=false

            // o delay tava dando conflito com os audios, entao ao inves de recomecar automaticamente, isso fica dentro
            // de um timer, que so vai parar quando o estado do autobuttom estiver false
            //a gente faz o que faz e refaz o que tem que refazer
            // mas assim, poderia tar pior, deus meu perdoe
            //} else if(bottomBar.autoActive&&scene.betStack<=scene.creditStack){
                //startSlotMachine()
            } else{
                bottomBar.autoActive=true
            }
            autoStartTimer.start()
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
        }

        //Gira automaticamente a caça níquel
        function autoStartSlotMachine() {
            //functionSounds.playClickSoundEffect()
            bottomBar.autoActive = !bottomBar.autoActive
            startSlotMachine()
            autoStartTimer.start()



        }

        // Modo rápido
        function fastSlotMachine(){
            bottomBar.fastActive = !bottomBar.fastActive
        }

        // Aumento o valor apostado
        function incrementBetInSlotMachine(){
           functionSounds. playClickSoundEffect()
            if (betStack+5 <= creditStack)
                betStack+=5
        }


        // Domunui o valor a ser apostado
        function decrementBetInSlotMachine(){
            functionSounds.playClickSoundEffect()
            if (betStack-5 >= 5)
                betStack-=5
        }

        // Define o valor apostado para a quantia da carteira
        function maxBetInSlotMachine(){
            functionSounds.playClickSoundEffect()

            let current_value = creditStack
            for(let i = current_value; i>current_value-6; i--){
                if (i%5===0)
                    betStack=i
                    break
            }
        }
    }

}

