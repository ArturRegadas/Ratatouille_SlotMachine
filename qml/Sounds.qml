import QtQuick
import Felgo


Item {


    BackgroundMusic{
         id: bgSound
         source: Qt.resolvedUrl("../assets/Sounds/MainMenuBG.wav")
         autoPlay: true
         volume: 0.3
         //loops: 1
       }
        // command to play the sound clickSound.play()


    BackgroundMusic{
         id: clickEffect
         source: Qt.resolvedUrl("../assets/Sounds/ClickSoundEffect.wav")
         autoPlay: false
         loops: 1
       }

    /*/
    BackgroundMusic{
         id: stopLine
         source: Qt.resolvedUrl("../assets/Sounds/.wav")
         autoPlay: false
         loops: 1
       }
    /*/

    BackgroundMusic{
         id: moneyEffect
         source: Qt.resolvedUrl("../assets/Sounds/startGameMusic.wav")
         autoPlay: false
         loops: 1
       }

    function playClickSoundEffect(){
        clickEffect.play()
    }


    function playStartMusicBG(){
        moneyEffect.play()
    }

    function stopMoneyEffect(){
        moneyEffect.stop()

    }


}
