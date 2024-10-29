import QtQuick
import Felgo

Item{
    id: carts
    //
    property string textColor
    property string typeCart
    property int freeSpins

    anchors.horizontalCenter: parent.horizontalCenter
    //
    visible:false
    Image{
        id: imageCart
        source: "../../assets/freeSpin/Free"+carts.typeCart+Math.round(Math.random()*2+1).toString()+'.png'
        fillMode: Image.PreserveAspectFit
        height:280
        x:-200
        y:-70
        //
        SequentialAnimation{
            id:appearImage
            ParallelAnimation{
                PropertyAnimation{
                    target: imageCart
                    property: "width"
                    from:0;to:imageCart.width
                    duration:500
                }
                PropertyAnimation{
                    target: imageCart
                    property: "x"
                    from:imageCart.x/2;to:imageCart.x
                }
                PropertyAnimation{
                    target: imageCart
                    property: "height"
                    from:0;to:imageCart.height
                    duration:500
                }
                PropertyAnimation{
                    target: imageCart
                    property: "y"
                    from:imageCart.y/2;to:imageCart.y
                }
            }
        }
    }
    //
    Text{
        id:textCart
        font.pixelSize: 30
        font.family: "Times New Roman"
        text: "COMBINATION "+carts.typeCart.toUpperCase()
        color: carts.textColor
        y:-80
        x:-40
        //
        PropertyAnimation{
            target: textCart
            id:appearText
            property: "font.pixelSize"
            from:0;to:textCart.font.pixelSize
            duration:500
        }
    }

    Text{
        id:displayFreeSpins
        font.family: "Times New Roman"
        font.pixelSize: 15
        color: "#c3f73e"
        text: "ADDITIONAL SPINS:  "+carts.freeSpins
        y:-50
        //
        PropertyAnimation{
            target:displayFreeSpins
            id:appearTextSpins
            property: "font.pixelSize"
            from:0;to:displayFreeSpins.font.pixelSize
            duration:500
        }
    }

    //
    SequentialAnimation{
        id: hover
        loops:Animation.Infinite
        ParallelAnimation{
            PropertyAnimation{
                target:imageCart
                property: "y"
                to:-100
                duration:1500
            }
            PropertyAnimation{
                target:textCart
                property:"y"
                to:-90
                duration:1500
            }
            PropertyAnimation{
                target:displayFreeSpins
                property:"y"
                to:-60
                duration:1500
            }
        }
        ParallelAnimation{
            PropertyAnimation{
                target:imageCart
                property: "y"
                to:imageCart.y
                duration:1000
            }
            PropertyAnimation{
                target:textCart
                property:"y"
                to:textCart.y
                duration:1000
            }
            PropertyAnimation{
                target:displayFreeSpins
                property:"y"
                to:displayFreeSpins.y
                duration:1000
            }
        }
    }
    //
    function introduction(){
        appearImage.start()
        appearText.start()
        appearTextSpins.start()
    }

    function fly(){
        hover.start()
    }
}
