import QtQuick
import Felgo
import "../config"

Item {
    id: lineSymbol
    //
    property string color
    property string type
    //
    Rectangle{
        anchors.fill: parent
        color: lineSymbol.color
    }
    Image{
        id: image
        anchors.fill: parent
        source: Qt.resolvedUrl("../../assets/")+SymbolRats.getSymbolData(type).source
        Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 2
            border.color: lineSymbol.color
        }
    }
}
