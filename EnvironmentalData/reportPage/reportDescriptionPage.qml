import QtQuick 2.0
import QtQuick.Controls 2.2

//user will be able to input the title and the description of the incident

Page {
    Text {
        text: qsTr("Description of the incident")
        font.pixelSize: parent.height / 27
        font.family: "Century Gothic"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
    }
    Rectangle {
        id: textInputFrame
        width: parent.width / 1.2
        height: parent.height / 16
        radius: 10
        border.color: "lightgray"
        anchors.bottom: textAreaFrame.top
        anchors.bottomMargin: textInputFrame.height
        anchors.horizontalCenter: parent.horizontalCenter
        TextArea {
            id: titleInput
            placeholderText: "Title of the incident"
            width: parent.width
            font.pixelSize: parent.height / 1.8
            font.family: "Century Gothic"
            anchors.fill: parent
        }
    }

    Rectangle {
        id: textAreaFrame
        width: parent.width / 1.2
        height: parent.height / 2
        radius: 10
        border.color: "lightgray"
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 40
        TextArea {
            placeholderText: "Description of the incident..."
            font.pixelSize: parent.height / 15
            font.family: "Century Gothic"
            wrapMode: TextArea.Wrap
            anchors.fill: textAreaFrame
        }
    }
}
