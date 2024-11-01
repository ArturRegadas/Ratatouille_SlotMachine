import QtQuick 6
import Qt5Compat.GraphicalEffects 6
import Felgo 4

Item {
  id: modal

  property Item pushBackContent

  property bool fullscreen

  property real modalHeight

  property bool closeOnBackgroundClick

  property bool closeWithBackButton

  property color backgroundColor

  property color overlayColor

  property real overlayOpacity

  property color cornerClipColor

  property int openedStatusBarStyle

  signal opened()

  signal closed()

  signal willClose(var event)

  function open() {}

  function close() {}
}
