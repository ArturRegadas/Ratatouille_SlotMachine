import Felgo 4.0
import QtQuick 2.0

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

         Rectangle {
           anchors.fill: scene.gameWindowAnchorItem
           color: "#00216D"
         }
    }
}
