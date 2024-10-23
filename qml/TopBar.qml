import Felgo 4.0
import QtQuick 2.0

Item {
    id: item
    height: 51 //mudar tamanho da top NavigationBar

    property bool soundState: false

    //ONLY WEB
    function atctive_sound(){
            console.log("o")
            clickSound.play()
            item.soundState = !item.soundState
        }



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

    /*/
      ONLY WEB
    Image {
        id: soundbutton
        source: item.soundState ? "../assets/PressedAutoButton.png" : "../assets/NormalAutoButton.png"
        anchors.topMargin: 8
        anchors.leftMargin: 4
        width: 33
        height: 28
        anchors.left: parent.left
        anchors.top: parent.top




        MouseArea{
            anchors.fill: parent
            onClicked:
                //clickSound.play()
                item.atctive_sound()
            }
        }

    /*/

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
