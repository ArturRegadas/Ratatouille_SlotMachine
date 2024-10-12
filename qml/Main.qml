import Felgo 4.0
import QtQuick 2.0
import "./slotMachine"

GameWindow{
    id: gameWindow

    //declare the scene as active
    activeScene: scene

    //main window size
    width: 920
    height: 640

    Scene {
        id: scene
        width: 480
        height: 320
        property int betStack: 5 // valor da bet
        property int creditStack: 400 // quantia na carteira

        //Possíveis imagens de fundo
        Image{  //Possível imagem de fundo principal
            anchors.fill: scene
            width: scene.gameWindowAnchorItem.width
            height: scene.gameWindowAnchorItem.height
            source: "../assets/backgroundMain.png"
            x:30
        }
        Image{ //Possível imagem de fundo lateral esquerda
            anchors.left: scene.left
            // source: "../assets/backgroundLeftMain.jpg"
        }
        //
        Ratatouille{ //Roleta
            // anchors.verticalCenter:
            y:47
            defaultItemHeight: 80
            defaultReelWidth: 67
        }
        TopBar {
           id: topBar
           width: scene.gameWindowAnchorItem.width
           anchors.top: scene.gameWindowAnchorItem.top
           anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
        }
         BottonBar{
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

         function startSlotMachine(){
            console.log("start clicked")
         }


        function autoStartSlotMachine() {
            bottomBar.autoActive = !bottomBar.autoActive
            if(bottomBar.autoActive)
                console.log("auto active")

        }

        function fastSlotMachine(){
            bottomBar.fastActive = !bottomBar.fastActive
            if(bottomBar.fastActive)
                console.log("fast active")

        }

        function incrementBetInSlotMachine(){
            if (betStack+5 <= creditStack)
                betStack+=5
        }


        function decrementBetInSlotMachine(){
            if (betStack-5 >= 5)
                betStack-=5
        }

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
