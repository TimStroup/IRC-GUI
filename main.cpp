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
QObject* input;
int numOfChannels = 0;
QObject* button1;QObject* button2;
QObject* button3;QObject* button4;
QObject* button5;QObject* button6;
QObject* button7;QObject* button8;
QObject* button9;QObject* button10;


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
    //sets the name of the channel button
    message = new string(channel);
    manager->triggerChannelName(message,channels.size());
    string history =inputArea->property("text").toString().toStdString();
    message = new string(history +"\n" + msg + "\n" +"now listening to channel: " + channel + "\n");
    manager->testMethod(message);
    //cout << msg << endl;
    //cout << "now listening to channel: " + channel << endl;
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
        string history =inputArea->property("text").toString().toStdString();
        message = new string(history +"\n" + msg);
        manager->testMethod(message);
        //cout << msg << endl;
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
        //cout << msg << endl;
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
    inputArea = mainWindow->findChild<QObject*>("outputArea");
    input = mainWindow->findChild<QObject*>("input");

    mainUI *mainUI1 = new mainUI(mainWindow,socket);

    manager = new EditManager();
    button1 = mainWindow->findChild<QObject*>("Channel1");
    button2 = mainWindow->findChild<QObject*>("Channel2");
    button3 = mainWindow->findChild<QObject*>("Channel3");
    button4 = mainWindow->findChild<QObject*>("Channel4");
    button5 = mainWindow->findChild<QObject*>("Channel5");
    button6 = mainWindow->findChild<QObject*>("Channel6");
    button7 = mainWindow->findChild<QObject*>("Channel7");
    button8 = mainWindow->findChild<QObject*>("Channel8");
    button9 = mainWindow->findChild<QObject*>("Channel9");
    button10 = mainWindow->findChild<QObject*>("Channel10");

    QObject::connect(manager, SIGNAL(testSignals(const string*)), mainUI1, SLOT(testSlots(const string*)));
    QObject::connect(input,SIGNAL(qmlSignal(QString)),mainUI1,SLOT(getCommand(const QString&)));
    QObject::connect(manager, SIGNAL(setChannelName(const string*,int)),mainUI1,SLOT(setChannelName(const string*,int)));
    QObject::connect(button1,SIGNAL(button1Signal(QString)),mainUI1,SLOT(button1(const QString&)));
    QObject::connect(button2,SIGNAL(button2Signal(QString)),mainUI1,SLOT(button2(const QString&)));
    QObject::connect(button3,SIGNAL(button3Signal(QString)),mainUI1,SLOT(button3(const QString&)));
    QObject::connect(button4,SIGNAL(button4Signal(QString)),mainUI1,SLOT(button4(const QString&)));
    QObject::connect(button5,SIGNAL(button5Signal(QString)),mainUI1,SLOT(button5(const QString&)));
    QObject::connect(button6,SIGNAL(button6Signal(QString)),mainUI1,SLOT(button6(const QString&)));
    QObject::connect(button7,SIGNAL(button7Signal(QString)),mainUI1,SLOT(button7(const QString&)));
    QObject::connect(button8,SIGNAL(button8Signal(QString)),mainUI1,SLOT(button8(const QString&)));
    QObject::connect(button9,SIGNAL(button9Signal(QString)),mainUI1,SLOT(button9(const QString&)));
    QObject::connect(button10,SIGNAL(button10Signal(QString)),mainUI1,SLOT(button10(const QString&)));

    thread readThread(receiveMessages,socket);

    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}


