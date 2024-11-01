import Felgo 4
import QtQuick 6
import QtQuick.Controls 6

Item {
  property Item background
  property Item contentItem

  property font font

  component Padding: QtObject {
    property real left: 0
    property real right: 0
    property real top: 0
    property real bottom: 0
  }

  property Padding padding: Padding { }
}
