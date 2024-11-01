import QtQuick 6
import QtQuick.Window 6
import Felgo 4

Item {
  id: page
  width: implicitWidth
  height: implicitHeight
  implicitWidth: parent.width
  implicitHeight: parent.height

  Rectangle {
    id: bg
    width: parent.width
    height: parent.height
    color: Theme.backgroundColor
  }

  Item {
    id: contentPaddingAnchorItem
  }

  property string title

  property alias backgroundColor: bg.color

  property NavigationStack navigationStack

  property Item leftBarItem: null

  property Item titleItem: null

  property Item rightBarItem: null

  property bool navigationBarHidden: false

  property real navigationBarTranslucency: 0.0

  property bool backNavigationEnabled: true

  property bool backSwipeEnabled

  property bool tabBarHidden: false

  readonly property bool isCurrentStackPage: false

  property bool useSafeArea: true

  readonly property Item safeArea: null

  property int preferredScreenOrientation: 0

  signal pushed()

  signal popped()

  signal willPop(var event)

  signal appeared()

  signal disappeared()

  property alias contentPaddingAnchorItem: contentPaddingAnchorItem

}
