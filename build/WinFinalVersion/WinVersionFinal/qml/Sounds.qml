import QtQuick
import Felgo
import QtQuick.Controls 2.15
import QtMultimedia



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


    BackgroundMusic{
         id: stopLine
         source: Qt.resolvedUrl("../assets/Sounds/stopLine.wav")
         autoPlay: false
         loops: 1
       }

    BackgroundMusic{
         id: startCoin
         source: Qt.resolvedUrl("../assets/Sounds/startCoin.wav")
         autoPlay: false
         loops: 1
       }



    BackgroundMusic{
         id: moneyEffect
         source: Qt.resolvedUrl("../assets/Sounds/startGameMusic.wav")
         autoPlay: false
         loops: 1
       }
    BackgroundMusic{
         id: simpleWin
         source: Qt.resolvedUrl("../assets/Sounds/cashRegister.wav")
         autoPlay: false
         loops: 1
       }

    BackgroundMusic{
         id: jackPotwin
         source: Qt.resolvedUrl("../assets/Sounds/jackpotMusic.wav")
         autoPlay: false
         //loops: 1
       }



    function playClickSoundEffect(){
        console.log("startMusic")
        clickEffect.play()
    }


    function playStartMusicBG(){
        console.log("startMusic")
        //moneyEffect.play()
    }

    function stopMoneyEffect(){
        console.log("startMusic")
        //moneyEffect.stop()

    }

    function playStartCoin(){
        console.log("startMusic")
        //startCoin.play()
    }

    function playStopLine(){
        console.log("startMusic")
        stopLine.play()
    }

    function playSimpleWin(){
        console.log("startMusic")
        //simpleWin.play()
    }

    function playJackPot(){
        console.log("JackPotWin")
        //jackPotwin.play()
    }
    function stopJackPot(){
        console.log("startMusic")
        //jackPotwin.stop()
    }


}
