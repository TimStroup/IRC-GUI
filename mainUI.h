#ifndef MAINUI_H
#define MAINUI_H
#include <QObject>
#include <tcpUserSocket.h>
using namespace std;
class mainUI : public QObject
{
    Q_OBJECT

    public:
        mainUI(QObject*, cs457::tcpUserSocket*);
        class QObject* mainWindow;
        string selectedChannel = "";

    public slots:
        void testSlots(const string*);
        void getCommand(const QString &command);
        void setChannelName(const string*,int);
};

#endif // MAINUI_H
