# Install script for directory: C:/Users/ahlre/Documents/Game_Log

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
  file(INSTALL DESTINATION "C:/Program Files (x86)/ratatouile" TYPE EXECUTABLE FILES "C:/Users/ahlre/Documents/ratatouile/build/Felgo_SDK_Desktop_Qt_6_4_1_MinGW_64_bit-Release/appratatouile.exe")
  if(EXISTS "$ENV{DESTDIR}/C:/Program Files (x86)/ratatouile/appratatouile.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/C:/Program Files (x86)/ratatouile/appratatouile.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Felgo/Tools/mingw1120_64/bin/strip.exe" "$ENV{DESTDIR}/C:/Program Files (x86)/ratatouile/appratatouile.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("C:/Users/ahlre/Documents/ratatouile/build/Felgo_SDK_Desktop_Qt_6_4_1_MinGW_64_bit-Release/CMakeFiles/appratatouile.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/BottonBar.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/Chronometer.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/Main.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/PopUpWin.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/Sounds.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/TopBar.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/config/SymbolRats.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/slotMachine/BlocksBoxWinning.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/slotMachine/BoxWinning.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/slotMachine/LineSymbol.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/slotMachine/Ratatouille.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/slotMachine/Symbol.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/slotMachine/WinAnalysis.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/slotMachine/WinningLine.qml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/BGbottonbar.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/BGtopbar.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/BetText.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Button" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Button/Transparent.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Button" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Button/gradientTotalAward.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/ButtonMinus.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/ButtonPlus.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/GameCoin.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/GameLogo.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/JackPot.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line4.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line5.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line6.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line7.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line8.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Lines" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Lines/Line9.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/MaxText.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/NormalAutoButton.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/NormalFastButton.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/NormalStartButton.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/PrecessedFastButton.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/PrecessedStartButton.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/PressedAutoButton.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/ClickSoundEffect.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/LaFestin.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/MainMenuBG.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/cashRegister.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/jackpotMusic.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/startCoin.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/startGameMusic.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/Sounds" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/Sounds/stopLine.wav")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/backgroundLeftMain.jpg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/backgroundLeftMain.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/backgroundMain.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/backgroundRightMain.jpg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/backgroundRightMain.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/ballon.gif")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/explosion.gif")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/BigWin.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeChefHat1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeChefHat2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeChefHat3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeColette1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeColette2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeColette3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeDjango1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeDjango2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeDjango3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeEgon1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeEgon2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeEgon3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeEmile1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeEmile2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeEmile3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeGusteau1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeGusteau2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeGusteau3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeLinguini1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeLinguini2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeLinguini3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeLogo1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeLogo2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeLogo3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeRemy1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeRemy2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeRemy3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeSkiner1.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeSkiner2.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/freeSpin" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/freeSpin/FreeSkiner3.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/scenes_loader" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/scenes_loader/scene_five.jpeg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/scenes_loader" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/scenes_loader/scene_four.jpeg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/scenes_loader" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/scenes_loader/scene_one.jpg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/scenes_loader" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/scenes_loader/scene_six.jpg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/scenes_loader" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/scenes_loader/scene_tree.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/scenes_loader" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/scenes_loader/scene_two.jpeg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolAuguste.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolBorder.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolChefHat.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolColette.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolDjango.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolDonut.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolEgon.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolEmile.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolHorst.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolLarousse.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolLinguini.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolLogo.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolPoison.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolRemy.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolSeasoning.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolSkinner.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/SymbolWoodenSpoon.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/gradientNotSpecial.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/gradientPoison.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/assets/slotMachine" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/assets/slotMachine/gradientSpecial.png")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/config.json")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/config/.qmldir.swp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/qml/config" TYPE FILE FILES "C:/Users/ahlre/Documents/Game_Log/qml/config/qmldir")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/ahlre/Documents/ratatouile/build/Felgo_SDK_Desktop_Qt_6_4_1_MinGW_64_bit-Release/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
