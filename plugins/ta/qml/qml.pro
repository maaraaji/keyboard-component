TOP_BUILDDIR = $$OUT_PWD/../../..
TOP_SRCDIR = $$PWD/../../..

include($${TOP_SRCDIR}/config.pri)

TARGET = dummy
TEMPLATE = lib

lang_en.path = "$${UBUNTU_KEYBOARD_LIB_DIR}/ta/"
lang_en.files = *.qml *.js

INSTALLS += lang_ta

# for QtCreator
OTHER_FILES += \
    Keyboard_ta.qml \
    Keyboard_ta_email.qml \
    Keyboard_ta_url.qml \
    Keyboard_ta_url_search.qml

