#include "mainUI.h"
#include <iostream>
#include <QVariant>
#include <QString>
mainUI::mainUI(QObject* qObjectPointer)
{
    mainUI::inputArea = qObjectPointer;
}

void mainUI::testSlots(const std::string *newText ) {
    QVariant qVariant(newText->c_str());
    inputArea->setProperty("text", qVariant);
    std::cout << newText << std::endl;
}
