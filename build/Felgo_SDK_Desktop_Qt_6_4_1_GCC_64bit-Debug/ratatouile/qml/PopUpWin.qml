import QtQuick 2.15
import QtQuick.Controls 2.15
import Felgo 3.0

Popup {
    property int flyMoney: 0
    id: customPopup
    modal: true
    focus: true
    width: 0
    height:0
    opacity: 0.0 // Inicia invisível para aplicar o fade-in
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
    anchors.centerIn: parent

    Behavior on flyMoney{
        PropertyAnimation{
            duration: 7000

        }
    }

    AnimatedImage{
        id: exploImage
        source: "../assets/explosion.gif"
        width: 1200
        height: 700
        anchors.centerIn: parent // Faz a imagem preencher todo o Popup
        playing: true

    }




    Image {
        id: jackpotImage
        source: "../assets/JackPot.png"
        width: 700
        height: 400
        anchors.centerIn: parent // Faz a imagem preencher todo o Popup
        MouseArea{
            anchors.fill: parent
            onClicked:{
                functionSounds.stopJackPot()
                closePopup()

            }
        }
    }

    Text {



        id: popUpMoney
        text: customPopup.flyMoney
        width: 100
        color: "#DDDDDD"
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top // Ancorando o texto na parte superior do Popup
        anchors.topMargin: 23 // Aumente o valor para aumentar a margem superior
        anchors.horizontalCenter: parent.horizontalCenter // Centralizando horizontalmente

        font.pixelSize: 80
    }

    // Função pública para abrir o popup

    SequentialAnimation {
            id: fadeInAnimation
            PropertyAnimation { target: customPopup; property: "opacity"; from: 0.0; to: 1.0; duration: 500 }
        }

    SequentialAnimation {
            id: fadeOutAnimation
            PropertyAnimation { target: customPopup; property: "opacity"; from: 1.0; to: 0.0; duration: 500 }
        }


    AnimatedImage{
        id: ballonImage
        source: "../assets/ballon.gif"
        width: 1200
        height: 700
        anchors.centerIn: parent // Faz a imagem preencher todo o Popup
        playing: true

    }
    function openPopup() {
        //functionSounds
        customPopup.visible = true

        fadeInAnimation.start();
    }

    Timer{
        id: endPopUpTimer
        interval: 600 // Intervalo de 500 ms (0.5 segundos)
        repeat: false // Define o timer como repetitivo
        running: false // Inicialmente parado


        onTriggered: {
            customPopup.visible = false
        }
    }

    function closePopup() {
        endPopUpTimer.start()
        fadeOutAnimation.start()

    }
}

