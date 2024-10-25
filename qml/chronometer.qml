import QtQuick
import Felgo

Item {

    property int playCount: 0
    property int interval: 1000
    property int qtdRepeat: 1


    Timer {
            id: audioTimer
            interval: 1000 // Intervalo de 500 ms (0.5 segundos)
            repeat: true // Define o timer como repetitivo
            running: false // Inicialmente parado


            onTriggered: {
                if (playCount < qtdRepeat) { // Toca o áudio até 4 vezes
                    functionSounds.playClickSoundEffect()
                    playCount++
                } else {
                    audioTimer.stop() // Para o timer após 4 repetições
                }
            }
        }

    function playAudTimer(){
        audioTimer.start()
    }

}
