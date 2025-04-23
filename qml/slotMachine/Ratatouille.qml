import Felgo 4.0
import QtQuick 2.15
import "../config"
import QtMultimedia 6.4

//
SlotMachine{
    id: machine
    rowCount: 3 // quantidade de colunas
    reelCount: 5 // quantidade de blocos distintos por coluna
    model: SymbolRats // modelo do caça níquel
    delegate: Symbol{ // forma genérica de colocar as imagens dos items
        imageSouce: Qt.resolvedUrl("../../assets/slotMachine/")+modelData.data.source
        symbolIsSpecial: modelData.data.special
        symbolIsPoison: modelData.data.category[0]==="Poison"
    }
}
