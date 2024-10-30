import QtQuick
import Felgo

Item {
    id: bottomBar
    height: 50

    // property button
    property bool autoActive
    property bool fastActive
    property bool startActive
    property int intTotalAward:0
    property bool delay: true
    
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
    //Exibe o prêmio total
    Rectangle{
        id: displayAward
        x:scene.gameWindowAnchorItem.width/2+85
        y:15
        height: 23
        width: 122
        Image{
            anchors.fill:parent
            source: "../assets/Button/gradientTotalAward.png"
        }
        //
        Text{
            id:textTotalAward
            text: bottomBar.intTotalAward
            anchors.centerIn: parent
            font.pixelSize: 20
            color: "#99d10d"
        }
    }
    //
    Timer{
        id: resetingValues
        interval: 1001
        onTriggered:{
            returnOldValue.stop()
            displayAwardAnimation.start()
        }
    }

    // Animação do bloco de exibição do prêmio
    SequentialAnimation{
        id: displayAwardAnimation
        loops: Animation.Infinite
        property int timeDuration:(Math.round(1000-intTotalAward)>50)?Math.round(1000-intTotalAward):50
        property int widthX:(Math.round(displayAward.width+intTotalAward/10)<170)?Math.round(displayAward.width+intTotalAward/10):165
        property int heightY: (Math.round(displayAward.height+intTotalAward/10)<40)?Math.round(displayAward.height+intTotalAward/10):40
        ParallelAnimation{
            PropertyAnimation{
                target: displayAward
                property: "width"
                to: displayAwardAnimation.widthX
                duration: displayAwardAnimation.timeDuration
            }
            PropertyAnimation{
                target: displayAward
                property:"x"
                to:(displayAwardAnimation.widthX<165)?displayAward.x-intTotalAward/20:displayAward.x-22
                duration:displayAwardAnimation.timeDuration
            }
            PropertyAnimation{
                target: displayAward
                property: "y"
                to:(displayAwardAnimation.heightY<40)?displayAward.y-intTotalAward/20:displayAward.y-10
            }
            PropertyAnimation{
                target: displayAward
                property:"height"
                to:displayAwardAnimation.heightY
                duration: displayAwardAnimation.timeDuration
            }
            //
            PropertyAnimation{
                target: textTotalAward
                property: "font.pixelSize"
                to:(Math.round(textTotalAward.font.pixelSize+intTotalAward/10)<30)?Math.round(textTotalAward.font.pixelSize+intTotalAward/10):30
                duration: displayAwardAnimation.timeDuration
            }
        }
        ParallelAnimation{
            PropertyAnimation{
                target: displayAward
                property: "x"
                to:displayAward.x
                duration: displayAwardAnimation.timeDuration

            }
            PropertyAnimation{
                target: displayAward
                property: "y"
                to:displayAward.y
                duration: displayAwardAnimation.timeDuration
            }

            PropertyAnimation{
                target: displayAward
                property: "width"
                to:displayAward.width
                duration: displayAwardAnimation.timeDuration
            }
            PropertyAnimation{
                target: displayAward
                property:"height"
                to:displayAward.height
                duration: displayAwardAnimation.timeDuration
            }
            //
            PropertyAnimation{
                target: textTotalAward
                property: "font.pixelSize"
                to:textTotalAward.font.pixelSize
                duration: displayAwardAnimation.timeDuration
            }
        }
    }
    //Restauração dos atributos iniciais
    SequentialAnimation{
        id: returnOldValue
        ParallelAnimation{
            PropertyAnimation{
                target:displayAward
                property: "x"
                to: scene.gameWindowAnchorItem.width/2+85
                duration: 500
            }
            PropertyAnimation{
                target:displayAward
                property: "y"
                to: 15
                duration: 500
            }
            PropertyAnimation{
                target:displayAward
                property: "width"
                to: 122
                duration: 500
            }
            PropertyAnimation{
                target:displayAward
                property: "height"
                to: 23
                duration: 500
            }
            //
            PropertyAnimation{
                target:textTotalAward
                property: "font.pixelSize"
                to: 20
                duration: 500
            }
        }
    }

    //
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
