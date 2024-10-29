import Felgo 4.0
import QtQuick 2.0

Item {
    id: winAnalysis
    //
    property var currentLines
    property int visibleIndex
    //
    WinningLine{
        id: line0
        visible: true
        image.source: Qt.resolvedUrl("../../assets/Lines/Line1.png")
        color: "#ff0000"
        positions: [
            // {reel: 0,row:1},
            {reel: 1,row:1},
            // {reel: 2,row:1},
            // {reel: 3,row:1},
            // {reel: 4,row:1}
        ]
    }
    // WinningLine{
    //     id: line1
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line2.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 0,row:0},
    //         {reel: 1,row:0},
    //         {reel: 2,row:0},
    //         {reel: 3,row:0},
    //         {reel: 4,row:0},
    //     ]
    // }
    // WinningLine{
    //     id: line2
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line3.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 0,row:2},
    //         {reel: 1,row:2},
    //         {reel: 2,row:2},
    //         {reel: 3,row:2},
    //         {reel: 4,row:2},
    //     ]
    // }
    // WinningLine{
    //     id: line3
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line4.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 0,row:0},
    //         {reel: 1,row:1},
    //         {reel: 2,row:2},
    //         {reel: 3,row:1},
    //         {reel: 4,row:0},
    //     ]
    // }
    // WinningLine{
    //     id: line4
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line5.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 0,row:2},
    //         {reel: 1,row:1},
    //         {reel: 2,row:0},
    //         {reel: 3,row:1},
    //         {reel: 4,row:2},
    //     ]
    // }
    // WinningLine{
    //     id: line5
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line6.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 0,row:1},
    //         {reel: 1,row:2},
    //         {reel: 2,row:2},
    //         {reel: 3,row:2},
    //         {reel: 4,row:1},
    //     ]
    // }
    // WinningLine{
    //     id: line6
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line7.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 0,row:1},
    //         {reel: 1,row:0},
    //         {reel: 2,row:0},
    //         {reel: 3,row:0},
    //         {reel: 4,row:1},
    //     ]
    // }
    // WinningLine{
    //     id: line7
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line8.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 3,row:2},
    //         {reel: 4,row:2},
    //         {reel: 2,row:1},
    //         {reel: 0,row:0},
    //         {reel: 1,row:0},
    //     ]
    // }
    // WinningLine{
    //     id: line8
    //     visible: false
    //     image.source: Qt.resolvedUrl("../../assets/Lines/Line9.png")
    //     color: "#ff0000"
    //     positions: [
    //         {reel: 0,row:0},
    //         {reel: 1,row:0},
    //         {reel: 2,row:1},
    //         {reel: 3,row:2},
    //         {reel: 4,row:2},
    //     ]
    // }
    property var lines: [line0, line1,line2,line3,line4,line5,line6,line7,line8]
    // tempo para exibir as linhas(?)
    Timer{
        id: showTimer
        interval: 1000
        onTriggered: {
            if(currentLines.length>0){
                var index=(visibleIndex+1)%currentLines.length
                displayLine(index)
                showTimer.restart()
            }
        }
    }

    //Valida o ganho do jogador caso este tenha ganahdo
    function validate(machine){
        currentLines=[]
        var winAmount=0
        //
        if(line0.validate(machine)){
            currentLines.push(line0)
            winAmount+=line0.winAmount
        } /*else*/ if(line1.validate(machine)){
            currentLines.push(line1)
            winAmount+=line1.winAmount
        }/*else*/ if(line2.validate(machine)){
            currentLines.push(line2)
            winAmount+=line2.winAmount
        }/*else*/ if(line3.validate(machine)){
            currentLines.push(line3)
            winAmount+=line3.winAmount
        }/*else*/ if(line4.validate(machine)){
            currentLines.push(line4)
            winAmount+=line4.winAmount
        }/*else*/ if(line5.validate(machine)){
            currentLines.push(line5)
            winAmount+=line5.winAmount
        }/*else*/ if(line6.validate(machine)){
            currentLines.push(line6)
            winAmount+=line6.winAmount
        }/*else*/ if(line7.validate(machine)){
            currentLines.push(line7)
            winAmount+=line7.winAmount
        }/*else*/ if(line8.validate(machine)){
            currentLines.push(line8)
            winAmount+=line8.winAmount
        }
        console.log(winAmount)
        scene.creditStack+=winAmount
        return currentLines.lngth>0
    }
    function reset(){ // Reseta a validação para um novo jogo
        showTimer.stop()
        hideLines()
    }
    function displayWinningLines(){ // Exibe a linha correspondente ao prêmio
        if(currentLines.length>0){
            showLine(0)
            showTimer.start()
        }
    }
    function showLine(index){
        if(index<0||index>=currentLines.length)
            return
        hideLines()
        currentLines[index].visible=true
        visibleInde=index
    }
    function hideLines(){
        for(var i=0;i<lines.length;++i){
            lines[i].visible=false
        }
    }
}
