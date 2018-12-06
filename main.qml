import QtQuick.Window 2.2
import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3


Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Hello World")

    Rectangle {
        width: 1920
        height: 1080
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
                        text: qsTr("Channel Settings")
                    }
                }

                Row {
                    id: channelRow1
                    y: parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel1Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 1")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow2
                    y: 2 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel2Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 2")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow3
                    y: 3 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel3Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 3")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow4
                    y: 4 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel4Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 4")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow5
                    y: 5 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel5Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 5")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow6
                    y: 6 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel6Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 6")
                        font.pixelSize: 12
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
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 7")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow8
                    y: 8 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel8Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 8")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow9
                    y: 9 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel9Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 9")
                        font.pixelSize: 12
                    }
                }

                Row {
                    id: channelRow10
                    y: 10 * parent.height / 12
                    width: parent.width
                    height: parent.height / 12

                    Button {
                        id: channel10Button
                        width: parent.width
                        height: parent.height
                        text: qsTr("Channel 10")
                        font.pixelSize: 12
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
                        text: "Message to ..."
                        width: parent.width
                        height: parent.height
                        leftPadding: 10
                        selectionColor: "#1c05df"
                        mouseSelectionMode: TextInput.SelectCharacters
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }
    }
}
