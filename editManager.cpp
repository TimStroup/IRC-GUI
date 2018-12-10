#include "editManager.h"
#include <QVariant>

EditManager::EditManager(){

}

//void EditManager::updateText(QVariant newText){
//    emit triggerUpdateText(newText);
//}

void EditManager::testMethod(const std::string *text) {
    emit testSignals(text);
}
