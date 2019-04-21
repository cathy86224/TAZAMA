import QtQuick 2.0
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.0

/*
  ***NOTE***
  *User should receive notification based on their selection
*/

Page {
    Text {  //title of the page
        id: setting
        text: qsTr("Setting")
        font.bold: true
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 10
    }
    Rectangle {  //rectangle box for "send push notifications"
        id: notification
        width: parent.width / 1.1
        height: parent.height / 18
        radius: 10
        border.color: "lightgray"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: notification.height * 1.8
        Text {
            text: qsTr("Send Push Notifications")
            font.family: "Century Gothic"
            font.pixelSize: parent.height / 2
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    //description for notification
    Text {
        id: explanation
        text: qsTr("Push notifications will allow you to know when new incidents are posted, incidents are resolved, etc.")
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 44
        width: parent.width / 1.2
        wrapMode: Text.WordWrap
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: notification.bottom
        anchors.topMargin: parent.height / 50
    }

    Text {
        id: switch1Text
        text: qsTr("Tell me about new incidents")
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 40
        anchors.left: notification.left
        anchors.leftMargin: parent.width / 25
        anchors.top: explanation.bottom
        anchors.topMargin: notification.height * 1.5
    }

    Text {
        id: switch2Text
        text: qsTr("Tell me when incidents are resolved")
        width: switch1Text.width
        wrapMode: Text.WordWrap
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 40
        anchors.left: notification.left
        anchors.leftMargin: parent.width / 25
        anchors.top: switch1Text.bottom
        anchors.topMargin: notification.height * 2
    }

    Text {
        id: regionText
        text: qsTr("Restrict notifications to be within a sub region")
        width: switch1Text.width
        wrapMode: Text.WordWrap
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 40
        anchors.left: notification.left
        anchors.leftMargin: parent.width / 25
        anchors.top: switch2Text.bottom
        anchors.topMargin: notification.height * 2
    }

    //switch for "Send Push Notifications"
    Switch {
        id: switch0
        anchors.verticalCenter: notification.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: parent.width / 10
        indicator: Rectangle {
            implicitWidth: notification.width / 7
            implicitHeight: notification.height / 1.5
            radius: 13
            color: switch0.checked ? "#17a81a" : "#ffffff"
            border.color: switch0.checked ? "#17a81a" : "#cccccc"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                x: switch0.checked ? parent.width - width : 0
                width: height
                height: notification.height / 1.5
                radius: width * 0.5
                color: switch0.down ? "#cccccc" : "#ffffff"
                border.color: switch0.checked ? (switch0.down ? "#17a81a" : "#21be2b") : "#999999"
            }
        }
    }

    //switch for "Tell me about new incidents"
    Switch {
        id: switch1
        anchors.verticalCenter: switch1Text.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: parent.width / 10
        indicator: Rectangle {
            implicitWidth: notification.width / 7
            implicitHeight: notification.height / 1.5
            radius: 13
            color: switch1.checked ? "#17a81a" : "#ffffff"
            border.color: switch1.checked ? "#17a81a" : "#cccccc"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                x: switch1.checked ? parent.width - width : 0
                width: height
                height: notification.height / 1.5
                radius: width * 0.5
                color: switch1.down ? "#cccccc" : "#ffffff"
                border.color: switch1.checked ? (switch1.down ? "#17a81a" : "#21be2b") : "#999999"
            }
        }
    }

    //switch for "Tell me when incidents are resolved"
    Switch {
        id: switch2
        anchors.verticalCenter: switch2Text.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: parent.width / 10
        indicator: Rectangle {
            implicitWidth: notification.width / 7
            implicitHeight: notification.height / 1.5
            radius: 13
            color: switch2.checked ? "#17a81a" : "#ffffff"
            border.color: switch2.checked ? "#17a81a" : "#cccccc"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                x: switch2.checked ? parent.width - width : 0
                width: height
                height: notification.height / 1.5
                radius: width * 0.5
                color: switch2.down ? "#cccccc" : "#ffffff"
                border.color: switch2.checked ? (switch2.down ? "#17a81a" : "#21be2b") : "#999999"
            }
        }
    }

    //a drop-down menu to select a specific district when getting a notificaiton
    MenuBar {
        Menu {
            id: region
            title: qsTr("Morogoro")
            MenuItem { text: qsTr ("Kilosa"); onClicked: region.title = "Kilosa"}
            MenuItem { text: qsTr ("Kilombero"); onClicked: region.title = "Kilombero"}
            MenuItem {text: qsTr ("Ulanga"); onClicked: region.title = "Ulanga"}
            MenuItem {text: qsTr ("Mvomero"); onClicked: region.title = "Mvomero"}
            MenuItem {text: qsTr ("Morogoro Rural"); onClicked: region.title = "Morogoro Rural"}
            MenuItem {text: qsTr ("Morogoro Urban"); onClicked: region.title = "Morogoro Urban"}
            MenuItem {text: qsTr ("Ifakara"); onClicked: region.title = "Morogoro Urban"}
            MenuItem {text: qsTr ("Malinyi"); onClicked: region.title = "Morogoro Urban"}
            MenuItem {text: qsTr ("Gairo"); onClicked: region.title = "Morogoro Urban"}
        }
        anchors.right: parent.right
        anchors.rightMargin: parent.width / 10
        anchors.verticalCenter: regionText.verticalCenter
    }

    //back to home page
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
