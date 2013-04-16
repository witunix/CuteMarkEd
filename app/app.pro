#-------------------------------------------------
#
# Project created by QtCreator 2013-03-16T11:40:15
#
#-------------------------------------------------

QT       += core gui webkitwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = CuteMarkEd
TEMPLATE = app

INCLUDEPATH += $$PWD
message($$INCLUDEPATH)

SOURCES += main.cpp\
        mainwindow.cpp \
        markdowneditor.cpp \
        controls/linenumberarea.cpp \
        discount/parser.cpp \
    discount/document.cpp

HEADERS  += mainwindow.h \
            markdowneditor.h \
            controls/linenumberarea.h \
            discount/parser.h \
    discount/document.h

FORMS    += mainwindow.ui

RESOURCES += \
    styles.qrc

OTHER_FILES += \
    github.css \
    GitHub2.css \
    Clearness.css \
    Clearness Dark.css \
    Clearness_Dark.css

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../discount/release/ -llibdiscount
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../discount/debug/ -llibdiscount
else:unix: LIBS += -L$$OUT_PWD/../discount/ -llibdiscount

INCLUDEPATH += $$PWD/../discount
DEPENDPATH += $$PWD/../discount

win32:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../discount/release/libdiscount.lib
else:win32:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../discount/debug/libdiscount.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../discount/liblibdiscount.a