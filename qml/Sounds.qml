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
         source: Qt.resolvedUrl("../assets/Sounds/CashRegister.wav")
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
        clickEffect.play()
    }


    function playStartMusicBG(){
        moneyEffect.play()
    }

    function stopMoneyEffect(){
        moneyEffect.stop()

    }

    function playStartCoin(){
        startCoin.play()
    }

    function playStopLine(){
        stopLine.play()
    }

    function playSimpleWin(){
        simpleWin.play()
    }

    function playJackPot(){
        jackPotwin.play()
    }
    function stopJackPot(){
        jackPotwin.stop()
    }


}
