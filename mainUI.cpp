#include "mainUI.h"
#include <iostream>
#include <QVariant>
#include <QString>
#include <tcpUserSocket.h>

cs457::tcpUserSocket *socketSender;

mainUI::mainUI(QObject* qObjectPointer,cs457::tcpUserSocket *Setsocket)
{
    mainUI::mainWindow = qObjectPointer;
    socketSender =Setsocket;
}

void mainUI::testSlots(const std::string *newText ) {
    QVariant qVariant(newText->c_str());
    QObject* outputArea = mainUI::mainWindow->findChild<QObject*>("outputArea");
    outputArea->setProperty("text", qVariant);
    delete (newText);
}

void mainUI::getCommand(const QString &command){
    socketSender->sendString(command.toStdString(),false);
}

void mainUI::setChannelName(const std::string *newChannel, int numChannels){
    QVariant qVariant(newChannel->c_str());
    std::string chan = "Channel";
    chan += to_string(numChannels);
    QObject* button = mainUI::mainWindow->findChild<QObject*>(chan.c_str());
    QObject* channelNameText = mainUI::mainWindow->findChild<QObject*>("channelTitle");

    button->setProperty("text",qVariant);
    channelNameText->setProperty("text", qVariant);
    delete (newChannel);
}
