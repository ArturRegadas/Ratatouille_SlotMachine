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


    Image {
        anchors.fill: parent
        source: "../assets/BGbottonbar.png"

    }

    Image {
        id : autobutton
        width: 61
        height: 31
        source: bottomBar.autoActive ? "../assets/" : "../assets/GameCoin.png"
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
        source: bottomBar.autoActive ? "../assets/" : "../assets/GameCoin.png"
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
        source: bottomBar.autoActive ? "../assets/" : "../assets/GameCoin.png"
        anchors.bottom: bottomBar.bottom
        anchors.right: parent.right
        anchors.bottomMargin: 4
        anchors.leftMargin: 8
        MouseArea{
            anchors.fill:parent
            onClicked: startClicked()
        }
    }


    Image {
        id: minus
        source: "../assets/"
    }

    Image {
        id: plus
        source: "../assets/"
    }

    Image {
        id: max
        source: "../assets/"
    }

}
