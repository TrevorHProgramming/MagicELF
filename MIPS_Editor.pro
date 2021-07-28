QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    BinToInst.cpp \
    InstToBin.cpp \
    PS2_MIPS/Instructions.cpp \
    PS2_MIPS/Source.cpp \
    PS2_MIPS/binstuff.cpp \
    QBinStuff.cpp \
    bufferhandler.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    PS2_MIPS/MIPSconv.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    MIPS_Editor_en_US.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    CODE.TXT \
    DefaultText.txt \
    SLUS_206.68
