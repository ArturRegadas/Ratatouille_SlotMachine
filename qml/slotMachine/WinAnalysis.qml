import Felgo 4.0
import QtQuick 2.0

Item {
    id: winAnalysis
    //
    property int visibleIndex
    property int award
    //
    property var currentLines
    //
    WinningLine { // Declara uma linha a ser analisada
        id: line0
        visible: false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line1.png")
        gradient_init: "#ff0000"
        gradient_end: "#b50707"
        positions: [ // posições a serem analisadas
            {reel: 0, row: 1},
            {reel: 1, row: 1},
            {reel: 2, row: 1},
            {reel: 3, row: 1},
            {reel: 4, row: 1}
        ]
    }

    WinningLine {
        id: line1
        visible: false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line2.png")
        gradient_init: "#1ceb1c"
        gradient_end: "#097a09"
        positions: [
            {reel: 0, row: 0},
            {reel: 1, row: 0},
            {reel: 2, row: 0},
            {reel: 3, row: 0},
            {reel: 4, row: 0}
      ]
    }

    WinningLine {
        id: line2
        visible: false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line3.png")
        gradient_init:"#1a78d6"
        gradient_end: "#0e4c8a"
        positions: [
            {reel: 0, row: 2},
            {reel: 1, row: 2},
            {reel: 2, row: 2},
            {reel: 3, row: 2},
            {reel: 4, row: 2}
       ]
    }

    WinningLine {
        id: line3
        visible:false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line4.png")
        gradient_init: "#f1fc0f"
        gradient_end: "#b7bf13"
        positions: [
            {reel: 0, row: 0},
            {reel: 1, row: 1},
            {reel: 2, row: 2},
            {reel: 3, row: 1},
            {reel: 4, row: 0}
        ]
    }

    WinningLine {
        id: line4
        visible: false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line5.png")
        gradient_init: "#d419d4"
        gradient_end: "#9c149c"
        positions: [
            {reel: 0, row: 2},
            {reel: 1, row: 1},
            {reel: 2, row: 0},
            {reel: 3, row: 1},
            {reel: 4, row: 2}
        ]
    }

    WinningLine {
        id: line5
        image.source: Qt.resolvedUrl("../../assets/Lines/Line6.png")
        visible: false
        gradient_init: "#2adbdb"
        gradient_end: "#1e9e9e"
        positions: [
            {reel: 0, row: 1},
            {reel: 1, row: 2},
            {reel: 2, row: 2},
            {reel: 3, row: 2},
            {reel: 4, row: 1}
        ]
    }

    WinningLine {
        id: line6
        visible: false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line7.png")
        gradient_init: "#ed7d0c"
        gradient_end: "#b5610d"
        positions: [
            {reel: 0, row: 1},
            {reel: 1, row: 0},
            {reel: 2, row: 0},
            {reel: 3, row: 0},
            {reel: 4, row: 1}
        ]
    }

    WinningLine {
        id: line7
        visible: false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line8.png")
        gradient_init: "#0cf07a"
        gradient_end: "#10b560"
        positions: [
            {reel: 0, row: 2},
            {reel: 1, row: 2},
            {reel: 2, row: 1},
            {reel: 3, row: 0},
            {reel: 4, row: 0}
        ]
    }

    WinningLine {
        id: line8
        visible: false
        image.source: Qt.resolvedUrl("../../assets/Lines/Line9.png")
        gradient_init: "#750fd9"
        gradient_end: "#4e0f8c"
        positions: [
            {reel: 0, row: 0},
            {reel: 1, row: 0},
            {reel: 2, row: 1},
            {reel: 3, row: 2},
            {reel: 4, row: 2}
        ]
    }
    // Para cada vez que haja múltiplas linhas vencedoras,
    // este contador irá exibir cada uma destas a cada um segundo
    Timer{
        id: showTimer
        interval: 1000
        onTriggered: {
            // Caso o index seja maior que a fila, ele retornará a zero
            var index=(visibleIndex+1)%currentLines.length
            showLine(index)
            showTimer.restart()
        }
    }
    property var list:[line0,line1,line2,line3,line4,line5,line6,line7,line8]
    //
    function validate(machine,bet){ // Verifica as linhas
        award=0
        currentLines=[]
        //
        for(var i=0;i<list.length;++i){

            // Para cada vez que esta for verdadeira,
            // a remcompensa é acresentada ao prêmio final
            if(list[i].check(machine,bet)){
                award+=list[i].winAmount
                currentLines.push(list[i])
            }
        }

        displayWinningLines() // Exibe as lihas vencedoras
        return award
    }
    function reset(){ // Reinicia a contagem de linhas
        showTimer.stop()
        hideLines()
    }
    function displayWinningLines(){ // Exibe as linhas vencedoras
        // Caso não haja linhas vencedoras, ele retornará nada
        if(currentLines.length>0){
            showLine(0)
            showTimer.start()
        }
    }
    function showLine(index){
        hideLines() // Esconde as linhas anteriores
        currentLines[index].visible=true // Exibe a linha na ordem da fila
        visibleIndex=index
    }
    function hideLines(){ // Esconde todas as linhas
        for(var i=0;i<list.length;++i){
            list[i].visible=false
        }
    }
}
