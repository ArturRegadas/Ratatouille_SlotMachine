import QtQuick 2.0
import Felgo 4.0

Item{
    property alias imageSouce: image.source // generalizar a criação de imagens para os blocos do caça-níquel(?)
    Image{
        id: image
        anchors.fill: parent
        anchors.topMargin: 5
        anchors.bottomMargin: 5
    }
}
