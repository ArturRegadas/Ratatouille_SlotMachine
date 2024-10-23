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
    property int multiplication //O valor a ser multiplicado
    //
    property var __winningPositions: [] // Posições vencedoras
    property var __winningTypes: [] // O tipo das posições vencedoras
    property var __lineSymbols: [] // Armazemna a linha venvedora para ser exibido
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

    function inArray(ar1,ar2){
        if(!ar2.length|!ar1.length)
            return 0
        for(var i=0;i<ar1.length;++i){
            if(ar2.includes(ar1[i]))
                return 1
        }
        return 0
    }

    function specialCart(category,special,symbol1,symbol2,repetition,arraySpecialCarts){// Retorna se a rodada é válida ou não
        console.log(category)
        if(symbol1==="Poison"|symbol2==="Poison")
            return -1
        var win=1
        if(symbol1===symbol2){
            win=(special[0])?SymbolRats.getWinFactor(symbol1,repetition):1
            return win
        }
        if(special[0]===special[1]&&symbol1!==symbol2)
            return 0
        for(var i=0;i<2;++i){
            var change=i==0?1:0
            for(var j=0;j<category[change].length;++j){
                if(category[i].includes(category[change][j])){
                    win=(special[0])?SymbolRats.getWinFactor(symbol1,repetition):1
                    var bool=(special[0]&&arraySpecialCarts.length)?inArray(category[0],arraySpecialCarts):(special[1]&&arraySpecialCarts.length)?inArray(category[1],arraySpecialCarts):1
                    console.log(arraySpecialCarts,bool)
                    if(!bool)
                        return 0
                    return win
                }
            }
        }
        return 0
    }

    function check(machine,bet){ // Verifica se as linhas são vencedoras
        __winningPositions=[] // Reseta a variável __winningPositions
        __winningTypes=[] // Reseta a variácel __winningTypes
        var previousType="" // Símbolo anterior
        var typeNormalCarts=[] // Veja as regras do jogo
        var typeSpecialCarts=[] // Veja a regras do Jogo
        var multiplier=1 // multiplicador
        var repetitionNormalCarts=0 // Vezes que as cartas normais se repetem
        var repetitionSpecialCarts=0 // Vezes que as cartas especiais se repetem
        var typeName="" // Nome da carta que será retirado o winFactor
        //
        for(var i=0;i<positions.length;++i){
            var pos=positions[i]
            var symbol=machine.getItemData(pos.reel,pos.row).type
            if(i==0)
                previousType=symbol
            var special=[SymbolRats.isSpecial(symbol),SymbolRats.isSpecial(previousType)]
            var category=[SymbolRats.getCategory(symbol),SymbolRats.getCategory(previousType)]
            var result=specialCart(category,special,symbol,previousType,repetitionSpecialCarts,repetitionSpecialCarts,typeSpecialCarts)
            // console.log(symbol,result,typeNormalCarts,typeSpecialCarts) // Caso de teste
            //
            if(result===-1|(!inArray(category[0],typeNormalCarts)&&typeNormalCarts.length>0)|(!inArray(category[0],typeSpecialCarts)&&typeSpecialCarts.length>0)|(!result&&symbol!==previousType)){
                previousType=symbol
                break
            }
            if(!special[0])++repetitionNormalCarts
            else ++repetitionSpecialCarts
            if(result===1&&!typeNormalCarts.length){
                typeNormalCarts=category[0]
                typeName=symbol
            } else if(result>1){
                if(!typeSpecialCarts.length) typeSpecialCarts=category[0]
                multiplier*=result
            }
            previousType=symbol
            __winningPositions.push(pos)
            __winningTypes.push(symbol)
        }
        //
        if(currentType==="Poison"|__winningPositions.length<3)
            return false
        repetitionSpecialCarts%=3
        repetitionNormalCarts%=3
        if(typeName==="")typeName=currentType
        scene.creditStack+=bet*SymbolRats.getWinFactor(typeName,repetitionNormalCarts)*multiplier // Adiciona ao crédito final
        winAmount=bet*SymbolRats.getWinFactor(typeName,repetitionNormalCarts)*multiplier
        // console.log(winAmount,multiplier) // Caso de teste
        winningLine.drawLineSymbols(machine) // Faz o molde da linha
        return true
    }
}
