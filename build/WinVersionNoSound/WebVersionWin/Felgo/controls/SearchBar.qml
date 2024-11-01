import QtQuick 6

Item {
  property ListView target

  property bool pullEnabled

  property bool keepVisible

  property string text

  property string placeHolderText

  property color textColor

  property color placeHolderColor

  property color inputBackgroundColor

  property color barBackgroundColor

  property bool iosAlternateStyle

  property string iconType

  property color iconColor

  property real iconSpacing

  property real iconLeftPadding

  property real iconRightPadding

  property real iconSize

  property real clearButtonSize

  property bool showClearButton

  property AppTextField textField

  signal accepted(string text)

  signal editingFinished(string text)

  function show() { }

  function hide() { }
}
