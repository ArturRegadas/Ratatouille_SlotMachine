pragma Singleton
import Felgo 4.0
import QtQuick 2.0
//
SlotMachineModel {
    symbols:{
        "Remy": { // O tipo do bloco
            frequency: 1, // Vezes que aparece por coluna
            data:{
                source:"SymbolRemy.png", // Código fonte

            }
        },
        "Gusteau":{
            frequency: 1,
            data: {
                source:"SymbolAuguste.png",

                special: false,
            }
        },
        "Colette":{
            frequency: 2,
            data:{
                source: "SymbolColette.png",

                special: false,
            }
        },
        "Egon":{
            frequency: 3,
            data: {
                source: "SymbolEgon.png",

                category: ["Universal"],
                special: false,
            }
        },
        "ChefHat":{
            frequency:3,
            data:{
                source: "SymbolChefHat.png",

            }
        },
        "Django":{
            frequency: 4,
            data:{
                source: "SymbolDjango.png",

                category: ["Food"],
                special: false,
            }
        },
        "Emile":{
            frequency: 4,
            data: {
                source: "SymbolEmile.png",
                winFactor: [1,2,4,7,10],
                category: ["Food"],
                special: false,
            }
        },
        "Skiner":{
            frequency: 5,
            data:{

                special: false,
            }
        },
        //Cartas especiais
        "Poison":{
            frequency: 5,
            data:{

            }
        },
        "Horst":{
            frequency: 2,
            data:{

        "WoodenSpoon":{
            frequency: 1,
            data:{
                source: "SymbolWoodenSpoon.png",
                winFactor:[5,10,15],
                category: ["Kitchen"],
                special: true,
            }
        },
    }
    //

    function getSymbolData(symbol){ // Captura as informações do símbolo
        if(symbols[symbol]===undefined)
            return 0
        return symbols[symbol].data
    }

    //
    function getWinFactor(sy,len){// Captura o valor vencedor
        if(!getSymbolData(sy))
            return 1
        var sys=getSymbolData(sy)
        return sys.winFactor[len]
    }

    function isSpecial(sy){
        if(!getSymbolData(sy))
            return false
        return getSymbolData(sy).special
    }

    function getCategory(sy){
        if(!getSymbolData(sy))
            return []
        return getSymbolData(sy).category
    }
}
