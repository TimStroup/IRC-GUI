#ifndef EDITMANAGER_H
#define EDITMANAGER_H
#include <QObject>
using namespace std;
class EditManager: public QObject{
    Q_OBJECT
public:
    EditManager();
    //void updateText(QVariant newText);
    void testMethod(const string*);
    void triggerChannelName(const string*,int);
signals:
    //void triggerUpdateText(QVariant newText);
    void testSignals(const string*);
    void setChannelName(const string*,int);

};

#endif // EDITMANAGER_H
