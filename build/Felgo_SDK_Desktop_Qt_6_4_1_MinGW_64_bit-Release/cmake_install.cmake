# Install script for directory: F:/programas/git/ratatouille/Game_Log

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/ratatouile")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Felgo/Tools/mingw1120_64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files (x86)/ratatouile/appratatouile.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files (x86)/ratatouile" TYPE EXECUTABLE FILES "F:/programas/git/ratatouille/Game_Log/build/Felgo_SDK_Desktop_Qt_6_4_1_MinGW_64_bit-Release/appratatouile.exe")
  if(EXISTS "$ENV{DESTDIR}/C:/Program Files (x86)/ratatouile/appratatouile.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/C:/Program Files (x86)/ratatouile/appratatouile.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Felgo/Tools/mingw1120_64/bin/strip.exe" "$ENV{DESTDIR}/C:/Program Files (x86)/ratatouile/appratatouile.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("F:/programas/git/ratatouille/Game_Log/build/Felgo_SDK_Desktop_Qt_6_4_1_MinGW_64_bit-Release/CMakeFiles/appratatouile.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/BottonBar.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/Main.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/TopBar.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/config/SymbolRats.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotMachine/Ratatouille.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotMachine/Symbol.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/assets/BGtopbar.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/assets/GameCoin.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/assets/GameLogo.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/assets/slotMachine/bancinha.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/assets/slotMachine/remy.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/..gitignore.un~")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/.gitignore")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/Main.qml~RF32930b0d.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/config.json")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/config/.qmldir.swp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/config/.qmldir.un~")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/config/SymbolRats.qml.autosave")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/config/SymbolRats.qml~RF32e73afe.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/config/qmldir")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml.autosave~RF328bea58.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF3286c554.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF3290594b.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32987cbb.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF329c6af4.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF329e7154.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF329ec8ab.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32a56b66.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32a5c58c.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32ac24e5.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32aca88c.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32b25936.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32b57cae.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32b5f70e.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32b64a6e.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32b69e6a.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32b70ded.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32b8f3b4.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Ratatouille.qml~RF32bafd6f.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/SlotMachine.qml.autosave~RF3275087f.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/SlotRat.qml~RF32a847e2.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/SlotRat.qml~RF32a8db77.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/SlotRat.qml~RF32ad2fae.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/SlotRat.qml~RF32af6470.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Symbol.qml~RF3280ca91.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Symbol.qml~RF32908a5e.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Symbol.qml~RF329d87af.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotGame" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotGame/Symbol.qml~RF32bd256f.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotMachine/Ratatouille.qml~RF32ee93da.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "F:/programas/git/ratatouille/Game_Log/qml/slotMachine/Symbol.qml~RF32ed4513.TMP")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "F:/programas/git/ratatouille/Game_Log/build/Felgo_SDK_Desktop_Qt_6_4_1_MinGW_64_bit-Release/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
