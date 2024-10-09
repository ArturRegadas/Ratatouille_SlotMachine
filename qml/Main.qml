import Felgo 4.0
import QtQuick 2.0

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

        property int betStack: 5 // bet value
        property int creditStack: 400 // amount in wallet

        Rectangle {//main background
                anchors.fill: scene.gameWindowAnchorItem
                color: "#722F37"
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
