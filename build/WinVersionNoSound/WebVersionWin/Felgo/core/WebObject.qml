import QtQuick 6

QtObject {
  property bool autoInitialize
  property int serverPort
  property url url
  property string title

  function clientReady(message) { }

  signal clientInitialized(var message)
  signal initializeChannel()
}
