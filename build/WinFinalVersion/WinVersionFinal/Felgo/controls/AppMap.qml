import QtQuick 6
import QtLocation 6
import QtPositioning 6

Map {

  property bool enableUserPosition

  property bool showUserPosition

  readonly property Position userPosition: null

  readonly property bool userPositionAvailable: false

  signal mapClicked

  function zoomToUserPosition() { }

}
