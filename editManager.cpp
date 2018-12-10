#include "editManager.h"
#include <QVariant>

EditManager::EditManager(){

}

void EditManager::testMethod(const std::string *text) {
    emit testSignals(text);
}

void EditManager::triggerChannelName(const std::string *text,int numChannels){
    emit setChannelName(text,numChannels);
}
