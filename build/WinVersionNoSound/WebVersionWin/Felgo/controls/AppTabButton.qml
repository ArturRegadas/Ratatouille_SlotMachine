import QtQuick 6
import QtQuick.Controls 6

TabButton {
  readonly property bool selected: false

  property string tabIcon

  property string iconFont

  property bool showIcon

  property Component iconComponent: null

  signal pressed()
}
