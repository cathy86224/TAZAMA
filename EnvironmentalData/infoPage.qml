import QtQuick 2.0
import QtQuick.Controls 2.4

/*
  ***NOTE***
  *Should update statistic regularly (weekly or monthly)
*/


Page {
    Text {  //title of the page
        id: title
        text: qsTr("About this App")  //"About this App"
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 30
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
    }

    //letting the users know what is the purpose of this app
    Rectangle {
        id: infoBox
        width: parent.width / 1.1
        height: parent.height / 2
        radius: 10
        border.color: "lightgray"
        anchors.top: title.bottom
        anchors.topMargin: title.height + 10
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: qsTr("The app's mission is to protect and help Tanzania's environment with <b>your</b> help. By filing reports, the government is able to learn more about incidents and quickly address them, all while keeping your identity <b>anonymous</b>. Tanzania and its living creatures thank you!")
            font.family: "Century Gothic"
            font.pixelSize: parent.height / 18
            lineHeight: 1.5
            width: parent.width / 1.1
            wrapMode: Text.WordWrap
            anchors.centerIn: parent
        }
    }

    //statistic of the report
    Rectangle {
        width: parent.width / 1.1
        height: parent.height / 3.4
        radius: 10
        border.color: "lightgray"
        anchors.top: infoBox.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: qsTr("Last month the government was able to address 12 deforestation, 4 trash, 6 dumping, and 10 water incidents! We could not have done it without your reports. Thank you!")
            font.family: "Century Gothic"
            font.pixelSize: infoBox.height / 19
            lineHeight: 1.5
            width: parent.width / 1.1
            wrapMode: Text.WordWrap
            anchors.centerIn: parent
        }
    }

    //return to homepage
    Image {
        id: menuIcon
        source: "qrc:/img/home.png"
        width: height
        height: parent.height / 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        MouseArea {
            anchors.fill: menuIcon
            onClicked: mainStack.pop()
        }
    }
}
