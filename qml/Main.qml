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
         }
    }

}
