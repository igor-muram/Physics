#-------------------------------------------------
#
# Project created by QtCreator 2019-05-04T11:59:42
#
#-------------------------------------------------

QT       += core gui printsupport widgets 3dcore 3drender 3dinput 3dlogic 3dextras 3danimation

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Charts
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        cameracontroller.cpp \
        gyroscope.cpp \
        help.cpp \
        main.cpp \
        mainwindow.cpp \
        manual.cpp \
        plot.cpp \
        qcustomplot.cpp \
    about.cpp \
    splash.cpp \
    trajectory.cpp

HEADERS += \
        cameracontroller.h \
        gyroscope.h \
        help.h \
        mainwindow.h \
        manual.h \
        plot.h \
        qcustomplot.h \
    about.h \
    splash.h \
    drawline.h \
    trajectory.h

FORMS += \
        help.ui \
        mainwindow.ui \
        manual.ui \
        plot.ui \
    about.ui \
    splash.ui

RC_FILE = icon.rc

QMAKE_CXXFLAGS_RELEASE -= -O3
QMAKE_CXXFLAGS_RELEASE -= -O2

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res.qrc
