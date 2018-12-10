#include "mainUI.h"
#include <iostream>
#include <QVariant>
#include <QString>
#include <tcpUserSocket.h>

cs457::tcpUserSocket *socketSender;

mainUI::mainUI(QObject* qObjectPointer,cs457::tcpUserSocket *Setsocket)
{
    mainUI::inputArea = qObjectPointer;
    socketSender =Setsocket;
}

void mainUI::testSlots(const std::string *newText ) {
    QVariant qVariant(newText->c_str());
    inputArea->setProperty("text", qVariant);
    delete (newText);
}

void mainUI::getCommand(const QString &command){
    socketSender->sendString(command.toStdString(),false);
}
