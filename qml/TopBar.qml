import Felgo 4.0
import QtQuick 2.0

Item {
    id: item
    height: 51 //mudar tamanho da top NavigationBar


    Image{   // imagem de fundo, deve ter o mesmo tamanho do item.height
        source: "../assets/BGtopbar.png"//caminho para a imagem
        anchors.fill: parent
    }

    Image { //imagem da logo
        width: 241//mesmo tamanho
        height: 46
        source: "../assets/GameLogo.png"

        anchors.top:parent.top
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Image { //imagem do money
        id: moneyImg
        width: 33
        height: 28
        source: "../assets/GameCoin.png"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.rightMargin: 4
    }

    Text {
        text: scene.creditStack
        color: "white"
        font.pixelSize: 12
        anchors.verticalCenter: moneyImg.verticalCenter
        anchors.right: moneyImg.left
    }
}
