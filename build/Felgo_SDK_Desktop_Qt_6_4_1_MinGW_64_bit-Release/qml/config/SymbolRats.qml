pragma Singleton
import Felgo 4.0
import QtQuick 2.0
//
SlotMachineModel {
    symbols:{
        "Remy": { //nome do bloco
            frequency: 1, //vezes que aparece por coluna
            data:{
                source:"remy.png", // código fonte
                winFactor: [1,10,30] // Caso haja uma combinação, o prêmio será multiplicado a depender da posição detse na roleta
            }
        },
        "Bancinha":{
            frequency: 4,
            data: {
                source: "bancinha.png",
                winFactor: [1,3,7]
            }
        },
        "Auguste":{
            frequency: 1,
            data: {
                source:"Auguste.png",
                winFactor: [1,10,20]
            }
        },
        "Linguini":{
            frequency: 5,
            data:{
                source: "linguini.png",
                winFactor: [1,2,5]
            }
        },
        "Django":{
            frequency: 4,
            data:{
                source: "Django.png",
                winFactor: [1,3,7]
            }
        },
        "Logo":{
            frequency: 5,
            data:{
                source: "logo.png",
                winFactor: [1,2,5]
            }
        },
        "Colette":{
            frequency: 3,
            data:{
                source: "Colette.png",
                winFactor: [1,5,10]
            }
        },
        "Skinner":{
            frequency: 6,
            data:{
                source: "Skinner.png",
                winFactor:[1,2,4]
            }
        }
        //Crítico
        //Comidas afins
    }
    //
    function getWinFactor(sy,len){//?
        console.log("Epa")
        if(symbols[sy]===undefined||symbols[sy].data.winFactor===undefined||symbols[sy].data.winFactor[len-3]===undefined)
            return 0
        return symbols[sy].data.winFactor[len-3]
    }
}
