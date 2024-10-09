import Felgo 4.0
import QtQuick 2.0
pragma Singleton
//
SlotMachineModel{ //cria uma caça níquel
    symbols: {
        "Remy": { //cria um elemento genérico da máquina
            frequency: 1,
            data:{
                source: "./Symbols/Remy.png",
                winFactor: [1,200,1000]
            }
        },
        "Bancinha": {
            frequency: 2,
            data: {
                source: "/Symbols/Bancinha.png",
                winFactor: [1,2,3]
            }
        },
    }
    function award(sym,tam){
        if(symbols[sym]===undefined||symbols[sym].winFactor[tam-3]===undefine){
            return 0
        }
        return symbols[sym].winFactor[tam-3]
    }
}
