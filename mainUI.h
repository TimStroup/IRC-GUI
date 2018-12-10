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
        class QObject* inputArea;

    public slots:
        void testSlots(const string*);
        void getCommand(const QString &command);
};

#endif // MAINUI_H
