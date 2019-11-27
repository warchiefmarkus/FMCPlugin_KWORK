######################################
# Init QT for generating a shared library without any Qt functionality
######################################
TEMPLATE = lib
QT -= gui core
CONFIG += plugin release
CONFIG -= thread exceptions qt rtti

CONFIG   += 32bit
CONFIG   += console shared c++11
CONFIG   -= app_bundle
CONFIG   -= debug_and_release

######################################
# Define global variables
######################################
INCLUDEPATH +=  SDK/CHeaders/XPLM \
                SDK/CHeaders/Wrappers \
                SDK/CHeaders/Widgets

DEFINES += XPLM200

######################################
# Win32 platform specific variables
#
# QT Creator Build chain: msvc32, msvc64
# QT Creator build directory: build\working
# QT Creator Custom process step (msvc32): cmd.exe /c copy /y release\win_32.xpl.dll ..\release\32\win.xpl
# QT Creator Custom process step (msvc32): cmd.exe /c copy /y release\win_32.xpl.map ..\debug
# QT Creator Custom process step (msvc32): cmd.exe /c copy /y release\win_32.xpl.pdb ..\debug
# QT Creator Custom process step (msvc64): cmd.exe /c copy /y release\win_64.xpl.dll ..\release\64\win.xpl
# QT Creator Custom process step (msvc64): cmd.exe /c copy /y release\win_64.xpl.map ..\debug
# QT Creator Custom process step (msvc64): cmd.exe /c copy /y release\win_64.xpl.pdb ..\debug
######################################

DEFINES += APL=0 IBM=1 LIN=0 _CRT_SECURE_NO_WARNINGS
#TARGET = win32.xpl
#32bit:TARGET = win32.xpl
#64bit:TARGET = win64.xpl
#LIBS += -L"$$_PRO_FILE_PWD_/lib/"
#LIBS += "C:/PLUGIN/lib/"
#32bit:
#LIBS += -L"lib" -lXPLM -lXPWidgets -lglu32 -lopengl32
#64bit:LIBS += -lXPLM_64 -lXPWidgets_64 -lglu32 -lopengl32

#win32 {
#    TARGET = win32.xpl
#    LIBS += -LC:\\PLUGIN\\lib\
#    -lXPLM \
#    -lXPWidgets \
#    -lglu32 \
#    -lopengl32
#}
#win64{
    TARGET = win64.xpl


    LIBS += -LC:\\PLUGIN\\lib\
    -lXPLM_64 \
    -lXPWidgets_64 \
    -lglu32_64 \
    -lopengl32_64
#}

QMAKE_CFLAGS_RELEASE += -Od
QMAKE_CXXFLAGS_RELEASE += -Od
QMAKE_LFLAGS_RELEASE += /MAP /DEBUG

######################################
# Source Files - Headers
######################################
HEADERS		+= src/AirwayReader.h \
    src/Bitmap.h \
    src/Flight.h \
    src/FreeNavProcedureReader.h \
    src/GNSProcedureReader.h \
    src/InputHandler.h \
    src/Main.h \
    src/Navigation.h \
    src/Page.h \
    src/Page_Airport.h \
    src/Page_Init.h \
    src/Page_Legs.h \
    src/Page_Navaid.h \
    src/Page_Progress.h \
    src/Page_Route.h \
    src/Pages.h \
    src/ProcedureReader.h \
    src/Utils.h \
    src/AirwayReader.h \
    src/Bitmap.h \
    src/Flight.h \
    src/FreeNavProcedureReader.h \
    src/GNSProcedureReader.h \
    src/InputHandler.h \
    src/Main.h \
    src/Navigation.h \
    src/Page.h \
    src/Page_Airport.h \
    src/Page_Init.h \
    src/Page_Legs.h \
    src/Page_Navaid.h \
    src/Page_Progress.h \
    src/Page_Route.h \
    src/Pages.h \
    src/ProcedureReader.h \
    src/Utils.h

######################################
# Source Files - CPP
######################################

SOURCES += \
    src/Bitmap.cpp \
    src/FreeNavProcedureReader.cpp \
    src/GNSProcedureReader.cpp \
    src/InputHandler.cpp \
    src/Main.cpp \
    src/Page.cpp \
    src/Page_Airport.cpp \
    src/Page_Init.cpp \
    src/Page_Legs.cpp \
    src/Page_Navaid.cpp \
    src/Page_Progress.cpp \
    src/Page_Route.cpp \
    src/Pages.cpp \
    src/ProcedureReader.cpp \
    src/Utils.cpp \
    src/Bitmap.cpp \
    src/FreeNavProcedureReader.cpp \
    src/GNSProcedureReader.cpp \
    src/InputHandler.cpp \
    src/Main.cpp \
    src/Page.cpp \
    src/Page_Airport.cpp \
    src/Page_Init.cpp \
    src/Page_Legs.cpp \
    src/Page_Navaid.cpp \
    src/Page_Progress.cpp \
    src/Page_Route.cpp \
    src/Pages.cpp \
    src/ProcedureReader.cpp \
    src/Utils.cpp


