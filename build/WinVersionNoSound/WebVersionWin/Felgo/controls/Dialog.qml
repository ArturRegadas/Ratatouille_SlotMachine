import QtQuick 6
import QtQuick.Window 6
import Felgo 4

Item {

  property string title

  property AppText titleItem

  property Item backgroundItem
  
  property bool positiveAction
  
  property bool negativeAction
  
  property string positiveActionLabel
  
  property string negativeActionLabel

  property Window mainWindow

  property bool isOpen

  property bool outsideTouchable

  property NumberAnimation scaleAnimation

  property NumberAnimation opacityAnimation

  property bool autoSize

  property bool titleDividerVisible

  signal canceled
  
  signal accepted

  signal closed

  function open() {
  }

  function close() {
  }
}
