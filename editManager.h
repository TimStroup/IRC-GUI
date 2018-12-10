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
signals:
    //void triggerUpdateText(QVariant newText);
    void testSignals(const string*);

};

#endif // EDITMANAGER_H
