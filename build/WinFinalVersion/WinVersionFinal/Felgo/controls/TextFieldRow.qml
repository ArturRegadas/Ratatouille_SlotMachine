import QtQuick.Layouts 6
import QtQuick 6
import Felgo 4

Rectangle {
  property alias textItem: textItem
  property alias label: textItem.text

  property alias textFieldItem: textFieldItem
  property alias value: textFieldItem.text
  property alias placeHolder: textFieldItem.placeholderText
  property alias clickEnabled: textFieldItem.clickEnabled

  signal clicked

  property real labelWidth

  property StyleSimpleRow style

  AppText {
    id: textItem
  }

  AppTextField {
    id: textFieldItem
  }
}
