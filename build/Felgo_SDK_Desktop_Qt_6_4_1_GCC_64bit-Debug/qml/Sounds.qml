import QtQuick
import Felgo
import QtQuick.Controls 2.15
import QtMultimedia



Item {


    GameSoundEffect{
         id: bgSound
         source: Qt.resolvedUrl("../assets/Sounds/MainMenuBG.wav")
         autoPlay: false
         volume: 0.3
         //loops: 1
       }
        // command to play the sound clickSound.play()


    GameSoundEffect{
         id: clickEffect
         source: Qt.resolvedUrl("../assets/Sounds/ClickSoundEffect.wav")
         autoPlay: false
         loops: 1
       }


    GameSoundEffect{
         id: stopLine
         source: Qt.resolvedUrl("../assets/Sounds/stopLine.wav")
         autoPlay: false
         loops: 1
       }

    GameSoundEffect{
         id: startCoin
         source: Qt.resolvedUrl("../assets/Sounds/startCoin.wav")
         autoPlay: false
         loops: 1
       }



    GameSoundEffect{
         id: moneyEffect
         source: Qt.resolvedUrl("../assets/Sounds/startGameMusic.wav")
         autoPlay: false
         loops: 1
       }
    GameSoundEffect{
         id: simpleWin
         source: Qt.resolvedUrl("../assets/Sounds/CashRegister.wav")
         autoPlay: false
         loops: 1
       }

    GameSoundEffect{
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
