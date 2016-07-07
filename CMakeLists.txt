cmake_minimum_required(VERSION 2.9)
project(RandomAnswer)

find_package(Qt5 COMPONENTS Quick Core Widgets)
set(CMAKE_AUTORCC ON)

qt5_add_resources(RESOURCES RandomAnswer.qrc)
add_executable(randomanswer main.cpp RandomAnswer.qrc)
qt5_use_modules(randomanswer Quick Core Widgets)

install(TARGET randomanswer RUNTIME DESTINATION bin)
install(FILES randomanswer.desktop DESTINATION share/applications)
install(FILES randomanswer.svg DESTINATION share/icons/hicolor/48x48/apps)

