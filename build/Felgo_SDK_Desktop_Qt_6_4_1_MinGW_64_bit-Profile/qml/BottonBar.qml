import QtQuick
import Felgo

Item {
    id: bottomBar
    height: 50

    // property button
    property bool autoActive
    property bool fastActive
    property bool startActive

    //functions -signals-
    signal autoClicked()
    signal fastClicked()
    signal startClicked()
    signal decrementClicked()
    signal incrementClicked()
    signal maxValueClicked()


    Image {//background od the BottomBar
        anchors.fill: parent
        source: "../assets/BGbottonbar.png"

    }

    Image {
        id : autobutton
        width: 61
        height: 31
        source: bottomBar.autoActive ? "../assets/PressedAutoButton.png" : "../assets/NormalAutoButton.png"
        anchors.bottom: bottomBar.bottom
        anchors.left: bottomBar.left
        anchors.bottomMargin: 4
        anchors.leftMargin: 8
        MouseArea{
            anchors.fill:parent
            onClicked: autoClicked()
        }
    }

    Image {
        id : fastbutton
        width: 61
        height: 31
        source: bottomBar.fastActive ? "../assets/PrecessedFastButton" : "../assets/NormalFastButton.png"
        anchors.bottom: bottomBar.bottom
        anchors.left: autobutton.right
        anchors.bottomMargin: 4
        anchors.leftMargin: 8
        MouseArea{
            anchors.fill:parent
            onClicked: fastClicked()
        }
    }

    Image {
        id : startbutton
        width: 61
        height: 31
        source: bottomBar.startActive ? "../assets/PrecessedStartButton" : "../assets/NormalStartButton.png"
        anchors.bottom: bottomBar.bottom
        anchors.right: parent.right
        anchors.bottomMargin: 4
        anchors.rightMargin: 8
        MouseArea{
            anchors.fill:parent
            onClicked: startClicked()
        }
    }

    Row{
        id: centerLineItens
        height: 25

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin:8

        Image{
            id: betText
            width: 35
            height: 19
            source: "../assets/BetText.png"
            anchors.verticalCenter: parent.verticalCenter

        }

        Text {
            id: currentBetText
            width: 35
            text: scene.betStack
            color: "#DDDDDD"
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
        }


        Image {
            id: minus
            width: 27
            height: 23
            source: "../assets/ButtonMinus.png"
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent
                onClicked: decrementClicked()
            }


        }

        Image {
            id: plus
            width: 30
            height: 23
            source: "../assets/ButtonPlus.png"
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent
                onClicked: incrementClicked()
            }


        }

        Image {
            id: max
            width: 50
            height: 23
            source: "../assets/MaxText.png"
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent
                onClicked: maxValueClicked()
            }


        }
    }
}
