import QtQuick.Window 2.2
import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.0

Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("IRC Application by Trey and Tim")

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#ffffff"

        Column {
            id: sideBarColumn
            width: parent.width / 5
            height: parent.height

            Rectangle {
                id: sideBarRectangle
                width: parent.width
                height: parent.height
                color: "#4886ae"
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#4886ae"
                    }

                    GradientStop {
                        position: 1
                        color: "#000000"
                    }
                }

                Row {
                    id: appTitleRow
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height / 12
                    layoutDirection: Qt.RightToLeft

                    Rectangle {
                        id: rectangle
                        width: parent.width
                        height: parent.height
                        color: "#00000000"
                        border.color: "#3d3d3d"
                        border.width: 0

                        Text {
                            id: applicationTitle
                            x: 0
                            width: parent.width
                            height: parent.height
                            text: qsTr("CS457 IRC Application")
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 20
                        }
                    }
                }

                Row {
                    id: specialRow
                    x: 0
                    y: 11 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: button
                        x: 0
                        width: parent.width
                        height: parent.height
                        visible: true

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: ""
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                    }
                }

                Row {
                    id: channelRow1
                    y: parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel1Button
                        text: ""
                        objectName: "Channel1"
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button1Signal(string msg)
                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel1Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onPressed: {
                            channel1Button.button1Signal(channel1Button.text)
                        }

                    }
                }

                Row {
                    id: channelRow2
                    y: 2 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel2Button
                        objectName: "Channel2"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button2Signal(string msg)


                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel2Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel2Button.button2Signal(channel2Button.text)
                        }

                    }
                }

                Row {
                    id: channelRow3
                    y: 3 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel3Button
                        objectName: "Channel3"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button3Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel3Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel3Button.button3Signal(channel3Button.text)
                        }
                    }
                }

                Row {
                    id: channelRow4
                    y: 4 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel4Button
                        objectName: "Channel4"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button4Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel4Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel4Button.button4Signal(channel4Button.text)
                        }
                    }
                }

                Row {
                    id: channelRow5
                    y: 5 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel5Button
                        objectName: "Channel5"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button5Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel5Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel5Button.button5Signal(channel5Button.text)
                        }
                    }
                }

                Row {
                    id: channelRow6
                    y: 6 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel6Button
                        objectName: "Channel6"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button6Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel6Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel6Button.button6Signal(channel6Button.text)
                        }
                    }
                }

                Row {
                    id: channelRow7
                    x: 0
                    y: 7 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel7Button
                        objectName: "Channel7"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button7Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel7Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel7Button.button7Signal(channel7Button.text)
                        }
                    }
                }

                Row {
                    id: channelRow8
                    y: 8 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel8Button
                        objectName: "Channel8"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button8Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel8Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel8Button.button8Signal(channel8Button.text)
                        }
                    }
                }

                Row {
                    id: channelRow9
                    y: 9 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel9Button
                        objectName: "Channel9"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button9Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel9Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                        onClicked: {
                            channel9Button.button9Signal(channel9Button.text)
                        }
                    }
                }

                Row {
                    id: channelRow10
                    y: 10 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel10Button
                        objectName: "Channel10"
                        text: ""
                        width: parent.width
                        height: parent.height
                        font.pixelSize: 12
                        signal button10Signal(string msg)

                        background: Rectangle {
                            opacity: enabled ? 0.3 : 0.3
                        }

                        contentItem: Text {
                            color: "#ffffff"
                            text: channel10Button.text
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }

                        onClicked: {
                            channel10Button.button10Signal(channel10Button.text)
                        }
                    }
                }
            }
        }

        Column {
            id: mainWindow
            x: parent.width / 5
            y: 0
            width: 4 * parent.width / 5
            height: parent.height

            Row {
                id: channelNameRow
                width: parent.width
                height: parent.height / 12

                Rectangle {
                    id: channelName
                    width: parent.width
                    height: parent.height
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#565656"
                        }

                        GradientStop {
                            position: 1
                            color: "#000000"
                        }
                    }

                    Text {
                        id: channelNameText
                        objectName: "channelTitle"
                        width: parent.width
                        height: parent.height
                        color: "#ffffff"
                        text: qsTr("Channel 1")
                        leftPadding: 10
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        font.pixelSize: 12
                    }
                }
            }

            Row {
                id: chatMessagesRow
                y: parent.height / 12
                width: parent.width
                height: 10 * parent.height / 12

                Flickable {
                    id: flickable
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height

                    TextArea.flickable: TextArea {
                        id: messageBoard
                        objectName: "outputArea"
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height
                        text: qsTr("")
                        readOnly: true

                    }

                    ScrollBar.vertical: ScrollBar {}
                }
            }

            Row {
                id: inputRow
                y: 11 * parent.height / 12
                width: parent.width
                height: parent.height / 12


                Rectangle {
                    id: rectangle1
                    width: parent.width
                    height: parent.height
                    color: "#747474"          
                    TextInput {
                        id: textInput
                        objectName: "input"
                        text: "Message to ..."
                        signal qmlSignal(string msg)
                        width: parent.width
                        height: parent.height
                        leftPadding: 10
                        font.pixelSize: 20
                        selectionColor: "#1c05df"
                        mouseSelectionMode: TextInput.SelectCharacters
                        verticalAlignment: Text.AlignVCenter
                        selectByMouse: true

                        Keys.onReturnPressed: {
                            textInput.qmlSignal(textInput.text)
                            //messageBoard.append(textInput.text)
                            flickable.contentY = messageBoard.contentHeight - chatMessagesRow.height + 17
                            textInput.text = ""
                            //console.log("Content Height: " + messageBoard.contentHeight)
                           // console.log("Chat Messages Rows Height:" + chatMessagesRow.height)
                        }
                    }
                }
            }


        }
    }
}

