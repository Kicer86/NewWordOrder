
cmake_minimum_required(VERSION 3.18)

project(nwo)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Gui)

qt_add_executable(nwo
    main.cpp
)

target_link_libraries(nwo PRIVATE Qt6::Gui Qt6::Quick)

qt_add_qml_module(nwo
    URI main
    VERSION 1.0
    QML_FILES
        AllWordsList.qml
        main.qml
        RandomWord.qml
)
