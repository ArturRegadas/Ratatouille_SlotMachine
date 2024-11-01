import QtQuick 6
import QtQuick.Controls 6
import QtQuick.Window 6

import Felgo 4

ApplicationWindow {

  property string licenseKey

  property Storage settings

  property Utils utils

  property NativeUtils nativeUtils

  property System system

  signal splashScreenFinished()

  signal initTheme

  property real screenWidth

  property real screenHeight

  property bool menuBarFelgoEnabled

  property bool storeWindowGeometry

  readonly property int modalCount: 0

  readonly property bool modalVisible: false

  property bool shutdownAppWithEscapeKeyEnabled

  property bool tablet

  property bool portrait

  property bool landscape

  property real widthInInches

  property real heightInInches

  property real diameterInInches

  property real uiScale

  property real spScale

  property real dpScale

  property bool isOnline

  property bool keyboardVisible

  property real keyboardHeight

  property list<QtObject> webObjects

  property WebObject webObject 

  property bool backButtonAutoAcceptGlobally

  function setScreenSize(newWidth, newHeight) {
  }

  function dp(value) {
    return value
  }

  function sp(value) {
    return value
  }

  function pixelToInches(pixel) {
    return pixel
  }

  function physicalPixels(pixel) {
    return pixel
  }

  signal applicationPaused

  signal applicationResumed

  signal appLinkUrlReceived(url appLinkUrl)

  signal backButtonPressedGlobally

}
