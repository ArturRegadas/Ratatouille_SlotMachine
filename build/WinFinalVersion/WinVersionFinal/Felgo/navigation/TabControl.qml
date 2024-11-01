import QtQuick 6
import QtQuick.Controls 6
import QtQuick.Layouts 6
import Felgo 4

Item {
  width: parent.width
  height: parent.height

  TabBar {
    id: tabBar
  }

  StackLayout {
    id: stackLayout
  }

  property alias tabBar: tabBar

  property alias stackLayout: stackLayout

  property alias tabPosition: tabBar.position

  property bool showIcon

  property font textFont

  signal tabClicked(NavigationItem tab, int index)

  readonly property NavigationItem currentTab: children.length > currentIndex ? children[currentIndex] : null

  property bool showOnlySelectedLabel
}
