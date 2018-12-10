#ifndef EDITMANAGER_H
#define EDITMANAGER_H
#include <QObject>

class EditManager: public QObject{

public:
     EditManager();
    void updateText(QVariant newText);
signals:
    void triggerUpdateText(QVariant newText);

};

#endif // EDITMANAGER_H
