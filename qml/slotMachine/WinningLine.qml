import Felgo 4.0
import QtQuick 2.0
import "../config"

Item {
    id: winningLine
    anchors.fill: parent
    //
    property alias image: lineImage // Declara o símbolo da linha
    property string gradient_init // Declara a cor inicial do gradiente(horizonta)
    property string gradient_end // Declara a cor final do gradiente(horizontal)
    property var positions:[] // Declara uma lista para as posiões a sere analisadas
    //
    property int winAmount // Prêmio total para ser exibido
    //
    property var __winningPositions: [] // Posições vencedoras
    property var __winningTypes: [] // O tipo das posições vencedoras
    property var __lineSymbols: [] // Armazemna a linha venvedora para ser exibida
    //
    Image{ // Símbolo da linha
        id: lineImage
        anchors.fill: parent
    }
    Item{ // Texto para eixbir o prêmio
        id: symbolArea
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text{
            id: winText
            x:10
            color: "black"
            text:winAmount
            font.pixelSize: 17
            z:2
        }
        Rectangle{ // Fundo do texto
            width:winText.width+20
            height:winText.height+4
            anchors.centerIn: winText
            color: gradient_init
            z:1
        }
    }
    function drawLineSymbols(machine){ // Projeta a linha para ser exibida
        removeLineSymbols()
        symbolArea.width=machine.width
        symbolArea.height=machine.height
        for(var i=0;i<winningLine.__winningPositions.length;++i){
            var atribute={ // Propriedades da linha vencedora
                gradient_init: winningLine.gradient_init,
                gradient_end: winningLine.gradient_end,
                x:Math.round((machine.defaultReelWidth*winningLine.__winningPositions[i].reel)),
                y:Math.round((machine.defaultItemHeight*winningLine.__winningPositions[i].row)),
                width: machine.defaultReelWidth,
                height:machine.defaultItemHeight,
                type:winningLine.__winningTypes[i]
            }
            var component=Qt.createComponent(Qt.resolvedUrl("LineSymbol.qml")) // Cria um molde para a linha
            var symbol=component.createObject(symbolArea,atribute) // Faz a linha com base no molde acima
            winningLine.__lineSymbols.push(symbol) // Adiciona a uma fila para ser exibida
        }
        // Caso a linha esteja na primeira linha,
        //o texto será exibido logo abaixo sdo bloco
        if(__winningPositions[0].row===0){
            winText.y=winningLine.__lineSymbols[0].y+winningLine.__lineSymbols[0].height
        } else{
            winText.y=winningLine.__lineSymbols[0].y-winText.height
        }
    }
    function removeLineSymbols(){ // Limpa a fila de linhas para serem exibidas
        for(var i=0;i<winningLine.__lineSymbols.length;++i){
            winningLine.__lineSymbols[i].destroy()
        }
        winningLine.__lineSymbols=[]
    }
    function check(machine){ // Verifica se as linhas são vencedoras
        var currentType=machine.getItemData(positions[0].reel,positions[0].row).type
        __winningPositions=[]
        __winningTypes=[]
        //
        for(var i=0;i<positions.length;++i){
            var pos=positions[i]
            var symbol=machine.getItemData(pos.reel,pos.row)
            // console.log(symbol.type) Caso de teste
            //
            // Caso a linha possua a o mesmo tipo da anterior ou
            // ela é do tipo "Remy", caso seja verdade, ele continuára a
            // verificação
            if(currentType!==symbol.type&&currentType!=="Remy"&&symbol.type!=="Remy")
                break
            currentType=symbol.type
            __winningPositions.push(pos)
            __winningTypes.push(symbol.type)
        }
        // Caso haja, ao menos, três blocos combinados. ele irá contar a recompensa
        if(__winningPositions.length<3)
            return false
        console.log(SymbolRats.getSymbolData(currentType).source) // Caso de teste
        scene.creditStack+=scene.betStack*SymbolRats.getWinFactor(currentType,__winningPositions.length) // Adiciona ao crédito final
        winAmount=scene.betStack*SymbolRats.getWinFactor(currentType,__winningPositions.length)
        winningLine.drawLineSymbols(machine) // Faz o molde da linha
        return true
    }
}
