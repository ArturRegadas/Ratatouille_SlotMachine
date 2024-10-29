import QtQuick
import Felgo

Item {
    id: item
    height:  //mudar tamanho da top NavigationBar


    Image{   // imagem de fundo, deve ter o mesmo tamanho do item.height

        source: "..."//caminho para a imagem
        anchors.fill: parent
        color: "Black"
    }

    Image { //imagem da logo
        width: //mesmo tamanho
        height:
        source: "..."

        anchors.top:parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image { //imagem do money
        id: moneyImg
        width:
        height:
        source: "..."
        anchors.right: parent.right
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text{//quanidade de money
        anchors.right: money.Img.left
        text: scene.creditStack
        color: "White"
        font.pixelSize: 13
    }

}
