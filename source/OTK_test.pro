# In the file ..\otk\otk_cpp\include\cipxdict_i.h replace byte to ::bytе
# add in PATH = D:\PTC\Creo 8.0.3.0\Common Files\x86e_win64\lib
QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

message($$(PROTOOLKIT8_SYS))

# Disable warnning 4100
QMAKE_CXXFLAGS *= -wd4100

QMAKE_CXXFLAGS_DEBUG += /MT
#QMAKE_CXXFLAGS_RELEASE += /MT
#QMAKE_CXXFLAGS += /MT
QMAKE_LFLAGS  += /NODEFAULTLIB:msvcrtd.lib


# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \    
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DEFINES += PRO_MACHINE=36 PRO_OS=4

PRE_TARGETDEPS += "$$(PROTOOLKIT8_SYS)/otk/otk_cpp/x86e_win64/obj/otk_cpp_async.lib"

PRE_TARGETDEPS += "$$(PROTOOLKIT8_SYS)/otk/otk_cpp/x86e_win64/obj/otk_no222.lib"

PRE_TARGETDEPS += "$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/protoolkit_NU.lib"

PRE_TARGETDEPS += "$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/pt_asynchronous.lib"

PRE_TARGETDEPS += "$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/ucore.lib"

PRE_TARGETDEPS += "$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/udata.lib"

win32: LIBS += -lkernel32
win32: LIBS += -luser32
win32: LIBS += -lwsock32
win32: LIBS += -ladvapi32
win32: LIBS += -lmpr
win32: LIBS += -lwinspool
win32: LIBS += -lnetapi32
win32: LIBS += -lpsapi
win32: LIBS += -lgdi32
win32: LIBS += -lshell32
win32: LIBS += -lcomdlg32
win32: LIBS += -lole32
win32: LIBS += -lws2_32


win32: LIBS += "-L$$(PROTOOLKIT8_SYS)/otk_cpp/x86e_win64/obj/" -lotk_cpp_async
win32: LIBS += "-L$$(PROTOOLKIT8_SYS)/otk/otk_cpp/x86e_win64/obj/" -lotk_no222
win32: LIBS += "-L$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/" -lpt_asynchronous
win32: LIBS += "-L$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/" -lprotoolkit_NU
win32: LIBS += "-L$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/" -lucore
win32: LIBS += "-L$$(PROTOOLKIT8_SYS)/protoolkit/x86e_win64/obj/" -ludata


INCLUDEPATH += "$$(PROTOOLKIT8_SYS)/protoolkit/includes"
DEPENDPATH += "$$(PROTOOLKIT8_SYS)/protoolkit/includes"

INCLUDEPATH += "$$(PROTOOLKIT8_SYS)/otk/otk_cpp/include"
DEPENDPATH += "$$(PROTOOLKIT8_SYS)/otk/otk_cpp/include"

INCLUDEPATH += $$PWD

