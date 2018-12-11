#ifndef MAINUI_H
#define MAINUI_H
#include <QObject>
#include <tcpUserSocket.h>
#include "channelBuffer.h"
using namespace std;
class mainUI : public QObject
{
    Q_OBJECT

    public:
        mainUI(QObject*, cs457::tcpUserSocket*,string*,vector<channelBuffer*>*);
        class QObject* mainWindow;
        string selectedChannel = "";

    public slots:
        void testSlots(const string*);
        void getCommand(const QString &command);
        void setChannelName(const string*,int);
        void button1(const QString &channel);

};

#endif // MAINUI_H
