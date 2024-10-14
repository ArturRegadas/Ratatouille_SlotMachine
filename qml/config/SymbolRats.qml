pragma Singleton
import Felgo 4.0
import QtQuick 2.0
//
SlotMachineModel {
    symbols:{
        "Remy": { //nome do bloco
            frequency: 1, //vezes que aparece por coluna
            data:{
                source:"SymbolRemy.png", // código fonte
                winFactor: [1,10,30] // Caso haja uma combinação, o prêmio será multiplicado a depender da posição detse na roleta
            }
        },
        "Emile":{
            frequency: 4,
            data: {
                source: "SymbolEmile.png",
                winFactor: [1,3,7]
            }
        },
        "Auguste":{
            frequency: 1,
            data: {
                source:"SymbolAuguste.png",
                winFactor: [1,10,20]
            }
        },
        "Linguini":{
            frequency: 5,
            data:{
                source: "SymbolLinguini.png",
                winFactor: [1,2,5]
            }
        },
        "Django":{
            frequency: 4,
            data:{
                source: "SymbolDjango.png",
                winFactor: [1,3,7]
            }
        },
        "Logo":{
            frequency: 5,
            data:{
                source: "SymbolLogo.png",
                winFactor: [1,2,5]
            }
        },
        "Colette":{
            frequency: 3,
            data:{
                source: "SymbolColette.png",
                winFactor: [1,5,10]
            }
        },
        "Skinner":{
            frequency: 6,
            data:{
                source: "SymbolSkinner.png",
                winFactor:[1,2,4]
            }
        }
        //Crítico
        //Comidas afins
    }
    //
    function getSymbolData(symbol){
        if(symbols[symbol]===undefined)
            return null
        return symbols[symbol]
    }

    //
    function getWinFactor(sy,len){//?
        var sys=getSymbolData(sy)
        if(sys===null)
            return 0
        if(sys.winFactor===undefined||sys.winFactor[len-3]===undefined)
            return 0
        return sys.winFactor[len-3]
    }
}
