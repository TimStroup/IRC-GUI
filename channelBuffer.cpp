#include "channelBuffer.h"
#include <string>
#include <iostream>
using namespace std;

channelBuffer::channelBuffer(string name){
    channelBuffer::name = name;
}

void channelBuffer::addMessage(string message){
    channelBuffer::messages.push_back(message);
}

string channelBuffer::dumpMessages(){
    string messages ="";
    for(string msg : channelBuffer::messages){
        messages += msg + "\n";
    }
    return messages;
}
