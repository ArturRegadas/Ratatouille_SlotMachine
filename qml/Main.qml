import Felgo 4.0
import QtQuick 2.0
import "slotMachine"
import QtMultimedia 6

GameWindow{
    id: gameWindow

    //declare the scene as active
    activeScene: scene

    //main window size
    width: 920
    height: 640


       GameSoundEffect {
         id: clickSound
         source: Qt.resolvedUrl("../assets/Sounds/musicTest.wav")
         loops: SoundEffect.Infinite
       }
        // command to play the sound clickSound.play()



    Scene {
        id: scene
        width: 570
        height: 360
        // Bet
        property int betStack: 5 // bet value
        property int previous_betStack
        property int creditStack: 400 // amount in wallet

        //Falling Credit Animation
        Behavior on creditStack{
            PropertyAnimation{
                duration: 1000
            }
        }

        Rectangle{ // In case the window is larger than the scene, this gradient will fill the background
            anchors.fill: scene.gameWindowAnchorItem
            gradient: Gradient{
                GradientStop{
                    position: 0.0
                    color: "#21b0db"
                }
                GradientStop{
                    position: 1.0
                    color: "#1859c9"
                }
            } 
        }
        Image{ // Left side image
            x:-20
            y: parent.verticalCenter
            source: "../assets/backgroundLeftMain.jpg"
            height: scene.gameWindowAnchorItem.height
            width: (Math.round(Math.round(slotMachine.height/slotMachine.rowCount)/80*67)*5)/2
        }
        Image{
            x:parent.width-150 // Right side image
            y: parent.verticalCenter
            source: "../assets/backgroundRightMain.jpg"
            height: scene.gameWindowAnchorItem.height
            width: (Math.round(Math.round(slotMachine.height/slotMachine.rowCount)/80*67)*5)/2
        }
        Ratatouille{ //Roulette
            id: slotMachine
            anchors.verticalCenter: scene.verticalCenter
            anchors.horizontalCenter: scene.horizontalCenter
            anchors.topMargin: -10
            //
            height: scene.gameWindowAnchorItem.height-topBar.height-bottomBar.height-10
            defaultItemHeight: Math.round(slotMachine.height/slotMachine.rowCount)
            defaultReelWidth: Math.round(defaultItemHeight/80*67)
            spinVelocity: Math.round(defaultItemHeight/80*750)
            //
            onSpinEnded: scene.endedSlotMachine()
            onSpinStarted: {
                slotMachine.reelStopDelay=utils.generateRandomValueBetween(350,700)
            }
        }
        WinAnalysis{
            anchors.verticalCenter: slotMachine.verticalCenter
            anchors.horizontalCenter: slotMachine.horizontalCenter
            id:winCheck
            height: slotMachine.height
            width: Math.round(height/240*408)
        }
        TopBar { // Tab above the roulette
           id: topBar
           width: scene.gameWindowAnchorItem.width
           anchors.top: scene.gameWindowAnchorItem.top
           anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
        }
        BottonBar{ // Tab below the roulette
                id: bottomBar
                width: scene.gameWindowAnchorItem.width
                anchors.bottom: scene.gameWindowAnchorItem.bottom
                anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
                onAutoClicked: scene.autoStartSlotMachine()
                onFastClicked: scene.fastSlotMachine()
                onStartClicked: scene.startSlotMachine()
                onDecrementClicked: scene.decrementBetInSlotMachine()
                onIncrementClicked: scene.incrementBetInSlotMachine()
                onMaxValueClicked: scene.maxBetInSlotMachine()
        }
        // funcrions
        // Spin the slot machine
        function startSlotMachine(){
            if(!slotMachine.spinning&&scene.betStack<=scene.creditStack){
                scene.previous_betStack=scene.betStack
                bottomBar.startActive= !bottomBar.autoActive
                scene.creditStack-=scene.betStack
                winCheck.reset()
                slotMachine.spin(utils.generateRandomValueBetween(bottomBar.fastActive?2:500,bottomBar.fastActive?0: 1000))
            }
        }

        //Função achamada após o termino da rodada
        function endedSlotMachine(){
            bottomBar.startActive=false
            var won=winCheck.validate(slotMachine,scene.previous_betStack)
            if(won){
                winCheck.displayWinningLines()
                scene.creditStack+=winCheck.award
                bottomBar.autoActive=false
                bottomBar.startActive=false
            } else if(bottomBar.autoActive&&scene.betStack<=scene.creditStack){
                startSlotMachine()
            } else{
                bottomBar.autoActive=false
            }
        }

        //Automatically spin the slot machine
        function autoStartSlotMachine() {
            bottomBar.autoActive = !bottomBar.autoActive
            startSlotMachine()
        }

        // Fast mode
        function fastSlotMachine(){
            bottomBar.fastActive = !bottomBar.fastActive
        }

        // Increase the amount bet
        function incrementBetInSlotMachine(){
            if (betStack+5 <= creditStack)
                betStack+=5
        }


        // Decreases the amount to be bet
        function decrementBetInSlotMachine(){
            if (betStack-5 >= 5)
                betStack-=5
        }

        // Sets the bet amount to the wallet amount
        function maxBetInSlotMachine(){
            let current_value = creditStack
            for(let i = current_value; i>current_value-6; i--){
                if (i%5===0)
                    betStack=i
                    break
            }
        }
    }

}

