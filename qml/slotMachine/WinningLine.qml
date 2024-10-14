import Felgo 4.0
import QtQuick 2.0
import "../config"

Item {
    id: winningLine
    anchors.fill: parent
    //
    property alias image: lineImage
    property string color
    property var positions:[]
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
            var atribute={
                color: winningLine.color,
                x:Math.round((machine.defaultReelWidth*winningLine.__winningPositions[i].reel)),
                y:Math.round((machine.defaultItemHeight*winningLine.__winningPositions[i].row)+5),
                width: machine.defaultWidth,
                height:machine.defaultHeight-10,
                type:winningLine.__winningTypes[i]
            }
            var component=Qt.createComponent(Qt.resolvedUrl("LineSymbol.qml"))
            var symbol=component.createObject(symbolArea,atribute)
            winningLine.__lineSymbols.push(symbol)
        }
        if(__winningPositions[0].row===0){
            winText.y=winningLine.__lineSymbols[0].y+winningLine.__lineSymbols[0].height

        } else{
            winText.y=winningLine.__lineSymbols[0].y-winText.height
        }
    }
    function removeLineSymbols(){
        for(var i=0;i<winningLine.__lineSymbols.length();++i){
            winningLine.__lineSymbols[i].destroy()
        }
        winningLine.__lineSymbols=[]
    }
    function validate(machine){
        var length=0
        var currentType=null
        __winningPositions=[]
        __winningTypes=[]
        //
        for(var i=0;i<positions.length;++i){
            var pos=positions[i]
            if(pos===null)
                return false
            var symbol=machine.getItemData(pos.reel,pos.row)
            if(symbol===null)
                return false 
            if(i==0){
                currentType=symbol.type
                ++length
            } else if(currentType==="Remy") {
                currentType=symbol.type
                ++length
            } else if(currentType!==symbol.type&&symbol.type!=="Remy"){
                break
            }
            __winningPositions.push(pos)
            __winningTypes.push(symbol.type)
        }
        if(length<3)
            return false
        winAmount=scene.betStack*SymbolRats.getWinFactor(currentType,length)
        winningLine.drawLineSymbols(machine)
        return true
    }
}
