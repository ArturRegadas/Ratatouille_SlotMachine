import QtQuick 6

Item {

  property Item leftOption

  property Item rightOption

  signal leftOptionShown

  signal rightOptionShown

  property bool isLeft

  property bool isRight

  property bool overshoot

  function hideOptions() {
  }
  function showRightOption() {
  }
  function showLeftOption() {
  }
}
