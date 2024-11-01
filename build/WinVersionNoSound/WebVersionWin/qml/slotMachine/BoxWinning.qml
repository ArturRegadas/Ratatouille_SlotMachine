import QtQuick
import Felgo
import QtMultimedia 6.4

Item {
    id: boxWinning
    //
    property var cartsArray: []
    property int visibleCartIndex:1
    //
    visible:true
    Rectangle{
        anchors.fill: parent
        color: "#242424"
        opacity: 0.85
    }
    //
    Item{
        id:test
        anchors.fill: parent
    }
    //
    Timer{
        id:animationHover
        interval: 1000
        onTriggered: {
            cartsArray[0].fly()
        }
    }
    //
    MouseArea{
        anchors.fill: parent
        onClicked: {
            // console.log(visibleCartIndex,cartsArray.length)
            if(boxWinning.visible&&boxWinning.visibleCartIndex<boxWinning.cartsArray.length){
                advance(visibleCartIndex)
                ++boxWinning.visibleCartIndex
            }else{
                advance(visibleCartIndex)
                boxWinning.reset()
                boxWinning.visible=false
                sleep.start()
            }
        }
    }
    //
    function createBlocks(typeName,color,addSpins){
        var atributes={
            freeSpins:addSpins,
            typeCart:typeName,
            textColor: color,
            y:scene.gameWindowAnchorItem.height/3,
            visible: (cartsArray.length)?false:true,
        }
        var component=Qt.createComponent(Qt.resolvedUrl("BlocksBoxWinning.qml"))
        var symbol=component.createObject(test,atributes)
        boxWinning.cartsArray.push(symbol)
        if(!cartsArray[0].fly.running){
            cartsArray[0].introduction()
            animationHover.start()
        }
        for(var i=cartsArray.length-1;i<cartsArray.length&&i>0;++i){
            cartsArray[i].fly()
        }
    }

    function advance(index){
        if(index>0){
            cartsArray[index-1].visible=false
            cartsArray[index-1].destroy()
        }
        if(index<cartsArray.length)cartsArray[index].visible=true
    }

    function reset(){
        cartsArray=[]
        visibleCartIndex=0
    }
}
