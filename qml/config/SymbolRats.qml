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
                winFactor: [10, 20,35], // Caso haja uma combinação, o prêmio será multiplicado a depender da posição detse na roleita
                category: ["Food","Linguini","Kitchen"],
                special: false,
            }
        },
        "Auguste":{
            frequency: 1,
            data: {
                source:"SymbolAuguste.png",
                winFactor: [5,10,30],
                category: ["Universal"],
                special: false,
            }
        },
        "Colette":{
            frequency: 2,
            data:{
                source: "SymbolColette.png",
                winFactor: [3,6,9],
                category: ["Universal"],
                special: false,
            }
        },
        "Egon":{
            frequency: 3,
            data: {
                source: "SymbolEgon.png",
                winFactor: [2,5,7],
                category: ["Universal"],
                special: false,
            }
        },
        "ChefHat":{
            frequency:3,
            data:{
                source: "SymbolChefHat.png",
                winFactor: [2,5,7],
                category: ["Universal"],
                special: false,
            }
        },
        "Emile":{
            frequency: 4,
            data: {
                source: "SymbolEmile.png",
                winFactor: [1,5,6],
                category: ["Food"],
                special: false,
            }
        },
        "Django":{
            frequency: 4,
            data:{
                source: "SymbolDjango.png",
                winFactor: [1,5,6],
                category: ["Food"],
                special: false,
            }
        },
        "Linguini":{
            frequency: 5,
            data:{
                source: "SymbolLinguini.png",
                winFactor: [1,2,4],
                category: ["Universal","Remy"],
                special: false,
            }
        }, 
        "Logo":{
            frequency: 5,
            data:{
                source: "SymbolLogo.png",
                winFactor: [1,2,4],
                category: ["Universal"],
                special: false,

            }
        }, 
        "Skinner":{
            frequency: 5,
            data:{
                source: "SymbolSkinner.png",
                winFactor:[1,3,5],
                category: ["Universal"],
                special: false,
            }
        },
        //Cartas especiais
        "Poison":{
            frequency: 6,
            data:{
                source: "SymbolPoison.png",
                winFractor:[0,0,0],
                category: ["Poison","Universal"],
                special: true,
            }
        },
        "Horrst":{
            frequency: 3,
            data:{
                source: "SymbolHorst.png",
                winFactor:[2,4,8],
                category: ["Human","Universal"],
                special: true,
            }
        },
        "Larousse":{
            frequency:3,
            data:{
                source:"SymbolLarousse.png",
                winFactor:[2,4,8],
                category: ["Human","Universal"],
                special: true,
            }
        },
        "Seasoning":{
            frequency: 2,
            data:{
                source:"SymbolSeasoning.png",
                winFactor:[2,5,10],
                category: ["Food","Universal"],
                special: true,
            }
        },
        "Donut":{
            frequency: 2,
            data:{
                source: "SymbolDonut.png",
                winFactor:[2,5,10],
                category: ["Food","Universal"],
                special: true,
            }
        },
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
