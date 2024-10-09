import Felgo 4.0
import QtQuick 2.0
import "./slotMachine"

GameWindow{
    id: gameWindow

    //declara a cena como ativa
    activeScene: scene

    //tamanho da janela principal
    width: 920
    height: 640

    Scene {
         id: scene
         width: 480
         height: 320

         property int betStack: 5 // valor da bet
         property int creditStack: 400 // quantia na carteira

         //Possível imagem de fundo
         // Image{
         //    anchors.centerIn: scene.Center
         //    width: scene.gameWindowAnchorItem.width
         //    height: scene.gameWindowAnchorItem.height
         //    source: "../assets/backgroundMain.jpg"
         // }

        Rectangle {
            anchors.fill: scene.gameWindowAnchorItem
            color: "#722F37"
        }
         TopBar {
           id: topBar
           width: scene.gameWindowAnchorItem.width
           anchors.top: scene.gameWindowAnchorItem.top
           anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
         }
         Ratatouille{
             anchors.centerIn: parent
             defaultItemHeight: 80
             defaultReelWidth: 67
         }
    }
    // configurar top bar

}
