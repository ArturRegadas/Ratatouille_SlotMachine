import QtQuick
import Felgo
import "../config"
import QtMultimedia 6.4

Item {
    id: lineSymbol
    //
    property string gradient_init
    property string gradient_end
    property string type
    //
    Rectangle{ // Fundo
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        width: lineSymbol.width
        height: lineSymbol.height
        gradient: Gradient{
            GradientStop{
                position: 0.0
                color: lineSymbol.gradient_init
            }
            GradientStop{
                position: 1.0
                color: lineSymbol.gradient_end
            }
        }
        Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 2
            border.color: lineSymbol.gradient_init
        }
    }
    Image{ // Imagem que está sob a linha
        id: image
        anchors.centerIn: parent
        width: lineSymbol.width
        height: lineSymbol.height-10
        source: Qt.resolvedUrl("../../assets/slotMachine/")+SymbolRats.getSymbolData(type).source
    }
}
