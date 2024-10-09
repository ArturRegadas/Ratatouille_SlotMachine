import Felgo 4.0
import QtQuick 2.0
import "../config"
//
SlotMachine{
    id: machine
    rowCount: 3 // quantidade de colunas
    reelCount: 3 // quantidade de blocos distintos por coluna
    model: SymbolRats // modelo do caça níquel
    delegate: Symbol{ // forma genérica de colocar as imagens dos items
        imageSouce: Qt.resolvedUrl("../../assets/slotMachine/")+modelData.data.source
    }
    Image{ //imagem de fundo
        anchors.fill: machine
        source: Qt.resolvedUrl("../../assets/slotMachine/back.png")
    }
    // Adionar pe
}
