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
        void button1(const QString &channel);
        void button2(const QString &channel);
        void button3(const QString &channel);
        void button4(const QString &channel);
        void button5(const QString &channel);
        void button6(const QString &channel);
        void button7(const QString &channel);
        void button8(const QString &channel);
        void button9(const QString &channel);
        void button10(const QString &channel);
};

#endif // MAINUI_H
