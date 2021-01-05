TOP_BUILDDIR = $$OUT_PWD/../../..
TOP_SRCDIR = $$PWD/../../..

include($${TOP_SRCDIR}/config.pri)

TEMPLATE        = lib
CONFIG         += plugin
QT             += widgets
INCLUDEPATH    += \
    $${TOP_SRCDIR}/src/ \
    $${TOP_SRCDIR}/src/lib/ \
    $${TOP_SRCDIR}/src/lib/logic/
    $${TOP_SRCDIR}/plugins/westernsupport

HEADERS         = \
    tamilplugin.h

TARGET          = $$qtLibraryTarget(taplugin)

EXAMPLE_FILES = tamilplugin.json

# generate database for presage:
PLUGIN_INSTALL_PATH = $${UBUNTU_KEYBOARD_LIB_DIR}/ta/

lang_db_ta.commands += \
  rm -f $$PWD/database_ta.db && \
  text2ngram -n 1 -l -f sqlite -o $$PWD/database_ta.db $$PWD/free_ebook.txt && \
  text2ngram -n 2 -l -f sqlite -o $$PWD/database_ta.db $$PWD/free_ebook.txt && \
  text2ngram -n 3 -l -f sqlite -o $$PWD/database_ta.db $$PWD/free_ebook.txt
lang_db_ta.files += $$PWD/database_ta.db
lang_db_ta_install.path = $$PLUGIN_INSTALL_PATH
lang_db_ta_install.files += $$PWD/database_ta.db

QMAKE_EXTRA_TARGETS += lang_db_ar lang_db_ta_install

target.path = $$PLUGIN_INSTALL_PATH
INSTALLS += target lang_db_ta_install

OTHER_FILES += \
    tamilplugin.json \
    free_ebook.txt

LIBS += $${TOP_BUILDDIR}/plugins/plugins/libwesternsupport.a -lpresage -lhunspell

INCLUDEPATH += $$PWD/../../westernsupport
DEPENDPATH += $$PWD/../../westernsupport
