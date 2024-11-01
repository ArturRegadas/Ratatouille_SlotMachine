import QtQuick 6

Rectangle {

  property Item target

  property string sectionProperty

  property real bottomMargin

  property bool caseSensitive: false

  property bool ignoreDiacritics: true

  property bool autoUpdate: true

  signal selected(string character, int itemIndex)

  function update() { }

}
