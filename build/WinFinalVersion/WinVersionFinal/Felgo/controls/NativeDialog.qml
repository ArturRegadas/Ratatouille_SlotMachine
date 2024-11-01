pragma Singleton

import QtQuick 6

Item {
  function confirm(title, description, callback, allowCancel) {
  }

  function inputText(title, description, placeholder, text, callback, okButtonTitle, cancelButtonTitle) {
  }

  function alert(title, description, callback, okButtonTitle, cancelButtonTitle) {
  }

  function choose(title, items, callback, cancelable) {
  }

  function camera(callback) {
  }

  function pickDate(callback, initialDate, minDate, maxDate) {
  }

  function pickFile(callback, title, path, filter, selectedFilter, selectMultiple) {
  }

  function pickImage(callback, title) {
  }
}
