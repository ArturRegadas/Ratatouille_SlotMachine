import QtQuick 6
import "../styles" // for Theme

AppOverlay {
  // target item for positioning and bubble text
  property Item target: null
  property string text: ""

  // background and tool tip styling
  property real highlightSpread: 6
  property Gradient highlightGradient: Gradient {
    GradientStop { position: 0; color: "black" }
    GradientStop { position: 0.1; color: "black" }
    GradientStop { position: 0.15; color: Qt.rgba(0,0,0,0.6) }
    GradientStop { position: 0.5; color: "transparent" }
  }

  property color color: Theme.tintColor
  property real radius: dp(4)
  property color textColor: Theme.backgroundColor
  property real textSize: sp(16)
  property real arrowSize: dp(8)

  property real horizontalMargin: dp(2)
  property real verticalMargin: 0
  property real horizontalPadding: dp(Theme.contentPadding)
  property real verticalPadding: dp(Theme.contentPadding)

  readonly property real maximumContentWidth: contentItem.width - 2 * horizontalPadding - 2 * horizontalMargin
  property bool hideBubble: false

  property Component contentComponent: null
}

