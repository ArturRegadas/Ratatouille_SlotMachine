import QtQuick 6
import Felgo 4

Item {
  property bool pullToRefreshEnabled

  property Flickable listView

  property bool refreshing

  property color contentColor

  signal refresh

}
