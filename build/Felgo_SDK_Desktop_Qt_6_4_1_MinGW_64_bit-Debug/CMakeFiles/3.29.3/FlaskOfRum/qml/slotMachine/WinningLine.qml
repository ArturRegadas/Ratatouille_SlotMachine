import QtQuick
import Felgo
import "../config"

Item {
    id: winningLine
    anchors.fill: parent
    //
    property alias image: lineImage
    property string color
    property string positions:[]
    //
    property int winAmount
    //
    property var __winningPositions: []
    property var __winningTypes: []
    property var __lineSymbols: []
    //
    Image{
        id: lineImage
        anchors.fill: parent
    }
    Item{
        id: symbolArea
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text{
            id: winText
            x:15
            color: "black"
            text:winAmount
            font.pixelSize: 10
            z:2
        }
        Rectangle{
            width:winText.width+20
            height:winText.height+4
            anchors.centerIn: winText
            color:winningLine.color
            z:1
        }
    }
    function drawLineSymbols(machine){
        removeLineSymbols()
        symbolArea.width=machine.width
        symbolArea.height=machine.height
        for(var i=0;i<winningLine.__winningPositions.length;++i){
            // var atribute={
            //     color: winningLine.color,
            //     x:Math.round((machine.defaultReelWidth*winningLine.__winningPositions[i].reel)),
            //     y:Math.round((machine.defaultReelHeight*winningLine.__winningPositions[i].reel)),
            //     width: machine.defaultWidth,
            //     height:machine.defaultHeight,
            //     type:winningLine.__winningTypes[i]
            // }
            //
            var component=Qt.createComponent(Qt.resolvedUrl("LineSymbol.qml"))
            var symbol=component.createObject(symbolArea,{
                color: winningLine.color,
                x:Math.round((machine.defaultReelWidth*winningLine.__winningPositions[i].reel)),
                y:Math.round((machine.defaultReelHeight*winningLine.__winningPositions[i].row)+5),
                width: machine.defaultWidth,
                height:machine.defaultHeight-10,
                type:winningLine.__winningTypes[i]
            })
            winningLine.__lineSymbols.push(symbol)
        }
        winText.y=winningLine.__lineSymbols[0].y
        if(__winningPositions[0].row===0){
            winText.y+=winningLine.__lineSymbols[0].height

        } else{
            winText.y-=winText.height
        }
    }
    function removeLineSymbols(){
        for(var i=0;i<winningLine.__lineSymbols.length();++i){
            winningLine.__lineSymbols[i].destroy()
        }
        // winningLine.__lineSymbols=[]
    }
    function validate(machine){
        var length=0
        var currentType=null
        __winningPositions=[]
        __winningTypes=[]
        //
        for(var i=0;i<positions.length;++i){
            var pos=positions[i]
            if(pos===null||!machine.getItemData(pos.reel,pos.row))
                return false
            var symbol=machine.getItemData(pos.reel,pos.row)
            if(i==0){
                currentType=symbol.type
            } else if(currentType==="Remy") {
                currentType=symbol.type
            } else if(currentType!==symbol.type&&symbol.type!=="Remy"){
                break
            }
            ++length
            __winningPositions.push(pos)
            __winningTypes.push(symbol)
        }
        if(length<3)
            return false
        winAmount=scene.betStack*SymbolRats.getWinFactor(currentType,length)
        return true
    }
}
