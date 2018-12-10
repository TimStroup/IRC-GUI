#ifndef MAINUI_H
#define MAINUI_H
#include <QObject>
using namespace std;
class mainUI : public QObject
{
    Q_OBJECT

    public:
        mainUI(QObject*);
        class QObject* inputArea;

    public slots:
        void testSlots(const string*);
};

#endif // MAINUI_H
