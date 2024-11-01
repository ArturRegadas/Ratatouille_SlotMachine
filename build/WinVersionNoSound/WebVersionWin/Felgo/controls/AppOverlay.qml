import QtQuick 6
import "../styles" // for Theme

Item {
  anchors.fill: parent

  readonly property bool isOpen: false
  readonly property bool isAnimating: false
  readonly property bool isOpening: false
  readonly property bool isClosing: false
  property bool keepBackgroundVisible: false

  // source properties
  property var sourceItem: null
  property url sourceUrl: ""

  // items and item slots
  readonly property alias contentItem: overlayContentItem // reference to container item for content
  readonly property Item item: null  // reference to target overlay item from source property
  default property alias sourceItems: overlayContentItem.data  // reparent outside nested children to overlayContentItem
  property Item backgroundItem: Rectangle {
    anchors.fill: parent
    color: backgroundColor
  }

  // configuration properties
  property bool blockBackground: true
  property bool closeOnBackgroundClick: true
  property bool useSafeArea: true
  property bool useLocalViewArea: false
  property bool useGlobalViewArea: false

  // style properties and animation
  property color backgroundColor: Theme.dialog.overlayColor
  property int backgroundAnimationDuration: 150
  property int animationDuration: 150

  property Animation openAnimation: NumberAnimation {
    property: "opacity"
    duration: animationDuration
    from: 0
    to: 1
  }
  property Animation closeAnimation: NumberAnimation {
    property: "opacity"
    duration: animationDuration
    to: 0
  }

  property Animation backgroundOpenAnimation: NumberAnimation {
    property: "opacity"
    from: 0
    to: 1
    duration: backgroundAnimationDuration
  }
  property Animation backgroundCloseAnimation: NumberAnimation {
    property: "opacity"
    to: 0
    duration: backgroundAnimationDuration
  }

  // signal open state and handle initialization from source
  signal opening()
  signal opened()
  signal closing()
  signal closed()
  signal itemWillDestroy()
  signal backgroundClicked()

  Item {
    id: overlayContentItem
    anchors.fill: parent
  }

  // public functions

  function setSource(source, properties = {}) { }

  function open() { }

  function close(keepBackground = false) { }
}
