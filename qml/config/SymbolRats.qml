pragma Singleton
import Felgo 4.0
import QtQuick 2.0
import QtMultimedia 6.4

//
SlotMachineModel {
    symbols:{
        "Remy": { // O tipo do bloco
            frequency: 1, // Vezes que aparece por coluna
            data:{
                source:"SymbolRemy.png", // Código fonte
                winFactor: [10,20,30,50,100], // Caso haja uma combinação, o prêmio será multiplicado a depender da posição detse na roleita
                category: ["Linguini","Kitchen","AugustGusteau"], // Categorias combinatórias
                special: false, // Especifica se é uma carta especial
            }
        },
        "Gusteau":{
            frequency: 1,
            data: {
                source:"SymbolAuguste.png",
                winFactor: [4,5,10,20,30],
                category: ["Universal","Kitchen"],
                special: false,
            }
        },
        "Colette":{
            frequency: 2,
            data:{
                source: "SymbolColette.png",
                winFactor: [1,2,4,15,20],
                category: ["Kitchen","Linguine","Human"],
                special: false,
            }
        },
        "Egon":{
            frequency: 3,
            data: {
                source: "SymbolEgon.png",
                winFactor: [1,2,2,10,17],
                category: ["Universal"],
                special: false,
            }
        },
        "ChefHat":{
            frequency:3,
            data:{
                source: "SymbolChefHat.png",
                winFactor: [1,5,5,10,15],
                category: ["Human","Remy","Auguste"],
                special: false,
            }
        },
        "Linguini":{
            frequency: 3,
            data:{
                source: "SymbolLinguini.png",
                winFactor: [1,2,4,9,15],
                category: ["Remy","Collet","Auguste","Food"],
                special: false,
            }
        }, 
        "Logo":{
            frequency: 3,
            data:{
                source: "SymbolLogo.png",
                winFactor: [1,1,2,9,17],
                category: ["Universal"],
                special: false,

            }
        },
        "Django":{
            frequency: 4,
            data:{
                source: "SymbolDjango.png",
                winFactor: [1,2,4,7,10],
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
                source: "SymbolSkinner.png",
                winFactor:[1,1,2,6,10],
                category: [],
                special: false,
            }
        },
        //Cartas especiais
        "Poison":{
            frequency: 5,
            data:{
                source: "SymbolPoison.png",
                winFractor:[0,0,0],
                category: ["Poison"],
                special: true,
            }
        },
        "Horst":{
            frequency: 2,
            data:{
                source: "SymbolHorst.png",
                winFactor:[2,2,4],
                category: ["Human","Universal"],
                special: true,
            }
        },
        "Larousse":{
            frequency:2,
            data:{
                source:"SymbolLarousse.png",
                winFactor:[2,2,4],
                category: ["Human","Universal"],
                special: true,
            }
        },
        "Seasoning":{
            frequency: 1,
            data:{
                source:"SymbolSeasoning.png",
                winFactor:[2,2,5],
                category: ["Food","Universal"],
                special: true,
            }
        },
        "Donut":{
            frequency: 1,
            data:{
                source: "SymbolDonut.png",
                winFactor:[2,2,5],
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
