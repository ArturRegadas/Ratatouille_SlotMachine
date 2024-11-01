import QtQuick 6
import QtQuick.Controls 6
import Felgo 4

TabButton {
  id: tabButton

  property bool lazyLoadContent: true

  default property Component tabContentComponent

  property alias title: tabButton.text

  readonly property bool isSelected: false

  property string iconType

  property string iconFont

  property Component iconComponent

  property bool showItem

  property bool showInDrawer

  property string badgeValue

  signal selected

  signal willChange(var event, NavigationItem tab, int index)

  property NavigationStack navigationStack

  property AppListView listView

  property AppPage page

}

