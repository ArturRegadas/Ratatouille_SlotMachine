import QtQuick 6
import QtQuick.Window 6 
import Felgo 4

Item {
  property string scaleMode

  signal backButtonPressedGlobally()
  
  signal keyPressedGlobally(var event)

  property bool backButtonAutoAcceptGlobally

  property variant activeScene

  property bool activeSceneFocusForcingEnabled
  
  property bool resolutionChangingWithKeysEnabled

  property bool shutdownAppWithEscapeKeyEnabled

  property var targetForResolutionChanges

  property bool displayFpsEnabled

  property color displayFpsColor
  
  property bool fullscreen
  
  property bool maximized

  property string licenseKey

  signal splashScreenFinished()
  
  function handleKeyPressEventForResolutionChange(event) {
  }
  
  function updateDeclarativeViewWindowSize(biggerSide, smallerSide) {
  }

  signal applicationPaused
  
  signal applicationResumed

  signal appLinkUrlReceived(url appLinkUrl)

  property bool wasPausedBefore
  
  property Settings settings
  
  property Utils utils
  
  property bool tablet
  
  property bool portrait
  
  property bool landscape

  property real widthInInches
  
  property real heightInInches
  
  property real diameterInInches

  property real uiScale
  
  property real spScale
  
  property real dpScale

  property bool keyboardVisible

  property real keyboardHeight

  property list<QtObject> webObjects

  property WebObject webObject

  function dp(value) {
  }
  
  function sp(value) {
  }
  
  function pixelToInches(pixel) {
  }
  
  function physicalPixels(pixel) {
  }
}
