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

    Behavior on intTotalAward{
        PropertyAnimation{
            duration: 1000
        }
    }

    Image {//background od the BottomBar
        anchors.fill: parent
        source: "../assets/BGbottonbar.png"

    }

    Image { // Botão auto
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

    Image { //Botão rápido
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
            onClicked:{
                functionSounds.playClickSoundEffect()
                fastClicked()
            }
        }
    }

    Timer{
        id: fastartTimer
        interval: 1000 // Intervalo de 500 ms (0.5 segundos)
        repeat: false // Define o timer como repetitivo
        running: false // Inicialmente parado


        onTriggered: {
            delay = true
        }
    }

    Image { //Começo
        id : startbutton
        anchors.bottom: bottomBar.bottom
        anchors.right: parent.right
        anchors.bottomMargin: 4
        anchors.rightMargin: 8
        width: 61
        height: 31
        source: bottomBar.startActive ? "../assets/PrecessedStartButton" : "../assets/NormalStartButton.png"
        MouseArea{
            anchors.fill:parent
            onClicked: {
                if (delay){
                    startClicked()
                    delay = false
                    functionSounds.playClickSoundEffect()
                }
            }
        }
    }

    Row{
        id: centerLineItens
        height: 25
        width: 200
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin:8

        Image{ // Texto bet
            id: betText
            width: 35
            height: 19
            source: "../assets/BetText.png"
            anchors.verticalCenter: parent.verticalCenter

        }

        Text { //Valor atual a ser apostado
            id: currentBetText
            width: 35
            text: scene.betStack
            color: "#DDDDDD"
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
        }


        Image { //Sinal de menos
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

        Image { //Sinal de mais
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

        Image { // Botão máximo
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
    function resetAnimations(){
        displayAwardAnimation.stop()
        returnOldValue.start()
        resetingValues.start()
    }
}
