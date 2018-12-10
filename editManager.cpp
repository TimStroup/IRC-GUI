#include "editManager.h"
#include <QVariant>

EditManager::EditManager(){

}

void EditManager::updateText(QVariant newText){
    emit triggerUpdateText(newText);
}
