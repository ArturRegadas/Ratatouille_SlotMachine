pragma Singleton
import Felgo 4.0
import QtQuick 2.0
//
SlotMachineModel {
    symbols:{
        "remy": { //nome do bloco
            frequency: 1, //vezes que aparece por coluna
            data:{
                source:"remy.png", // código fonte
                winFactor: [1,2,3] // ?
            }
        },
        "bancinha":{
            frequency: 1,
            data: {
                source: "bancinha.png",
                winFactor: [1,2,3]
            }
        }
    }
}
