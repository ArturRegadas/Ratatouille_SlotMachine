import QtQuick 2.0
import Felgo 4.0

Item{
    id: blocks
    property alias imageSouce: image.source // generalizar a criação de imagens para os blocos do caça-níque
    property bool symbolIsSpecial
    // categoria(?)
    Image{ //Fundo gradiente
        anchors.fill: blocks
        source:(!symbolIsSpecial)?Qt.resolvedUrl("../../assets/slotMachine/gradientNotSpecial.png"):Qt.resolvedUrl("../../assets/slotMachine/gradientSpecial.png")
        anchors.topMargin: 3
        anchors.bottomMargin: 3
        anchors.leftMargin: 2
        anchors.rightMargin: 2
    }
    Image{ //Imagem do personagem
        id: image
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.bottomMargin: 10
        anchors.leftMargin: 5
        anchors.rightMargin: 5
    }
    Image { //Borda
        id: borda
        anchors.fill: parent
        source: "../../assets/slotMachine/SymbolBorder.png"
        width: 2; height: 2
    }
}
