import QtQuick
import Felgo
import QtMultimedia 6.4

Item {

    property int playCount: 0
    property int intervalval: 1000
    property int qtdRepeat: 1
    Timer{
        id: firstTimer
        interval: 1000 // Intervalo de 500 ms (0.5 segundos)
        repeat: false // Define o timer como repetitivo
        running: false // Inicialmente parado


        onTriggered: {
            functionSounds.playStopLine()
            audioTimer.start()
        }

    }


    Timer {
            id: audioTimer
            interval: intervalval // Intervalo de 500 ms (0.5 segundos)
            repeat: true // Define o timer como repetitivo
            running: false // Inicialmente parado


            onTriggered: {
                if (playCount < qtdRepeat) {
                    functionSounds.playStopLine()
                    playCount++
                } else {
                    audioTimer.stop() // Para o timer após 4 repetições
                }
            }
        }



    function playAudTimer(){
        firstTimer.start()
    }

}
