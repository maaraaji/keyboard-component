#ifndef TAMILPLUGIN_H
#define TAMILPLUGIN_H

#include <QObject>
#include "languageplugininterface.h"
#include "westernlanguagesplugin.h"

//#include <presage.h>

class TamilPlugin : public WesternLanguagesPlugin
{
    Q_OBJECT
    Q_INTERFACES(LanguagePluginInterface)
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.Examples.TamilPlugin" FILE "tamilplugin.json")

public:
    explicit TamilPlugin(QObject* parent = 0)
        : WesternLanguagesPlugin(parent)
    {
    }

    virtual ~TamilPlugin()
    {
    }
};

#endif // ENGLISHPLUGIN_H
