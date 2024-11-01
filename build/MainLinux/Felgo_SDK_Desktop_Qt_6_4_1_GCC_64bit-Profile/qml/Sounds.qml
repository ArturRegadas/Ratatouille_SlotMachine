import QtQuick
import Felgo
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


    SoundEffect{
         id: clickEffect
         source: Qt.resolvedUrl("../assets/Sounds/ClickSoundEffect.wav")

       }


    SoundEffect{
         id: stopLine
         source: Qt.resolvedUrl("../assets/Sounds/stopLine.wav")

       }

    SoundEffect{
         id: startCoin
         source: Qt.resolvedUrl("../assets/Sounds/startCoin.wav")

       }



    SoundEffect{
         id: moneyEffect
         source: Qt.resolvedUrl("../assets/Sounds/startGameMusic.wav")

       }
    SoundEffect{
         id: simpleWin
         source: Qt.resolvedUrl("../assets/Sounds/cashRegister.wav")

       }

    SoundEffect{
         id: jackPotwin
         source: Qt.resolvedUrl("../assets/Sounds/jackpotMusic.wav")
         //loops: 1
       }



    function playClickSoundEffect(){
        clickEffect.stop()
        clickEffect.source = Qt.resolvedUrl("")
        clickEffect.source = Qt.resolvedUrl("../assets/Sounds/ClickSoundEffect.wav")
        clickEffect.play()
    }


    function playStartMusicBG(){
        moneyEffect.stop()
        moneyEffect.source = Qt.resolvedUrl("")
        moneyEffect.source = Qt.resolvedUrl("../assets/Sounds/startGameMusic.wav")
        moneyEffect.play()
    }

    function stopMoneyEffect(){
        moneyEffect.stop()

    }

    function playStartCoin(){
        startCoin.stop()
        startCoin.source = Qt.resolvedUrl("")
        startCoin.sourcec = Qt.resolvedUrl("../assets/Sounds/startCoin.wav")
        startCoin.play()
    }

    function playStopLine(){
        stopLine.stop()
        stopLine.source = Qt.resolvedUrl("")
        stopLine.source = Qt.resolvedUrl("../assets/Sounds/stopLine.wav")
        stopLine.play()
    }

    function playSimpleWin(){
        simpleWin.stop()
        simpleWin.source = Qt.resolvedUrl("")
        simpleWin.source = Qt.resolvedUrl("../assets/Sounds/cashRegister.wav")
        simpleWin.play()
    }

    function playJackPot(){
        jackPotwin.stop()
        jackPotwin.source = Qt.resolvedUrl("")
        jackPotwin.source = Qt.resolvedUrl("../assets/Sounds/jackpotMusic.wav")
        jackPotwin.play()
    }
    function stopJackPot(){
        jackPotwin.stop()
    }


}
