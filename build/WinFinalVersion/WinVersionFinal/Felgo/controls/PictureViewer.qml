pragma Singleton

import QtQuick 6

Item {
  
  property Item currentViewer

  signal opened(var image)

  signal closed()

  function show(window, image) {
  }

  function close() {
  }

}
