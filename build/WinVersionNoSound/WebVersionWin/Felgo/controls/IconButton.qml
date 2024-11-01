import QtQuick 6

Item {

  property real size

  property string iconType

  property string selectedIconType

  property string activeIconType

  property color color

  property color selectedColor

  property color activeColor

  property color disabledColor

  property bool toggle

  property bool selected

  signal pressed

  signal released

  signal clicked

  signal toggled

}
