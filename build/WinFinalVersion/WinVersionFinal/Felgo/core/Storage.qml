import QtQuick 6
import QtQuick.LocalStorage 6 



Item {


  
  property string databaseName

  
  
  property bool cacheEnabled

  
  property bool logOutputStorageEnabled

  
  property bool clearAllAtStartup


  
  signal storageError(variant errorData)

  




  
  function getValue(key, callback) {
  }

  
  function setValue(key, value) {
  }

  
  function clearValue(key) {
  }

  
  function clearAll() {
  }

  


  
}

