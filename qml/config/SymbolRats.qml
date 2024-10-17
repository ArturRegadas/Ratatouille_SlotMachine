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
                winFactor: [1,120,500] // Caso haja uma combinação, o prêmio será multiplicado a depender da posição detse na roleta
            }
        },
        "Auguste":{
            frequency: 1,
            data: {
                source:"SymbolAuguste.png",
                winFactor: [10,200,2000]
            }
        },
        "Colette":{
            frequency: 2,
            data:{
                source: "SymbolColette.png",
                winFactor: [5,100,300]
            }
        },
        "Egon":{
            frequency: 3,
            data: {
                source: "SymbolEgon.png",
                winFactor: [5,25,150]
            }
        },
        "ChefHat":{
            frequency:3,
            data:{
                source: "SymbolChefHat.png",
                winFactor: [5,25,150]
            }
        },
        "Emile":{
            frequency: 4,
            data: {
                source: "SymbolEmile.png",
                winFactor: [1,10,35]
            }
        },
        "Django":{
            frequency: 4,
            data:{
                source: "SymbolDjango.png",
                winFactor: [1,10,35]
            }
        },
        "Linguini":{
            frequency: 5,
            data:{
                source: "SymbolLinguini.png",
                winFactor: [1,8,12]
            }
        }, 
        "Logo":{
            frequency: 5,
            data:{
                source: "SymbolLogo.png",
                winFactor: [1,5,10]
            }
        }, 
        "Skinner":{
            frequency: 5,
            data:{
                source: "SymbolSkinner.png",
                winFactor:[1,5,10]
            }
        }
        //Crítico
        //Comidas afins
    }
    //
    function getSymbolData(symbol){
        if(symbols[symbol]===undefined)
            return null
        return symbols[symbol].data
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
