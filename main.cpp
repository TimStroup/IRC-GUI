#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "tcpUserSocket.h"
#include "channelBuffer.h"
#include "editManager.h"
#include <iostream>
#include <fstream>
#include <errno.h>
#include <thread>
#include <string>
#include <QString>

#include "mainUI.h"

using namespace std;

vector<string> channels;
vector<channelBuffer*> buffers;
string listeningChannel;
int ready = 1;
const string *message;
EditManager *manager;
string status = "";
QObject* inputArea;

void addNewChannel(string msg){
    string channel = "";
    for(int i = 8; i < msg.size(); i++){
        if(msg.at(i) == ':'){
            break;
        }
        else{
            channel += msg.at(i);
        }

    }
    listeningChannel = channel;
    channels.push_back(channel);
    buffers.push_back(new channelBuffer(channel));
    cout << msg << endl;
    cout << "now listening to channel: " + channel << endl;
}

void getChannelMessage(string msg){
string channel = "";
    for(int i = 1; i < msg.size(); i++){
        if(msg.at(i) == '-'){
            break;
        }
        else{
            channel += msg.at(i);
        }
    }
    if(channel == listeningChannel){
        //change to print to the text area
        cout << msg << endl;
    }
    else{
        for(channelBuffer *buffer: buffers){
            if(buffer->name == channel){
                buffer->addMessage(msg);
            }
        }
    }
}

bool responseParser(string msg){
    if(msg == "QUIT") {
        ready = 0;
        return false;

    }
    else if(msg.at(1) == '#' || msg.at(1) == '&'){
        getChannelMessage(msg);
        return true;
    }
    else if(msg.substr(0,8) == "success:"){
        addNewChannel(msg);
        return true;
    }
    else {
        string history =inputArea->property("text").toString().toStdString();
        message = new string(history +"\n" + msg);
        manager->testMethod(message);
        cout << msg << endl;
        return true;
    }
}
void receiveMessages(cs457::tcpUserSocket* tcpUserSocket) {
    ssize_t val;

    bool cont = true;
    while(cont) {
        string msg;
        tie(msg,val) = tcpUserSocket->recvString();
        cont = responseParser(msg);
    }

    tcpUserSocket->sendString("QUIT");
}

int main(int argc, char *argv[])
{
    cs457::tcpUserSocket *socket = new cs457::tcpUserSocket("127.0.0.1",5437);
    socket->connectToServer();
    //MainUI *ui = new MainUI();

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QList<QObject*> list =  engine.rootObjects();

    QObject *mainWindow = list.takeAt(0);
    inputArea = mainWindow->findChild<QObject*>("inputArea");
    mainUI *mainUI1 = new mainUI(inputArea);

    manager = new EditManager();

    QObject::connect(manager, SIGNAL(testSignals(const string*)), mainUI1, SLOT(testSlots(const string*)));
    //QObject::connect(manager,SIGNAL(EditManager::triggerUpdateText(QVariant)),ui,SLOT(MainUI::updateText(QVariant)));
    //manager->testMethod("Yo");

    thread readThread(receiveMessages,socket);

    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}


