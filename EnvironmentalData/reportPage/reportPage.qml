import QtQuick 2.0
import QtQuick.Controls 2.2

//file a new report

Page {    
    Rectangle {  //title of the page
        id: topBar
        width: parent.width + 2
        height: parent.height / 10
        border.color: "lightgray"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: qsTr("File New Report")
            font.family: "Century Gothic"
            font.bold: true
            font.pixelSize: parent.height / 4
            font.letterSpacing: 1.3
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -10
        }
    }

    //image page dot (page indicator)
    Rectangle {
        id: imgDot
        width: parent.height / 30
        height: width
        radius: height * 0.5
        border.color: reportSwipe.currentIndex == 0? "#539b53" : "#a3a3a3"
        color: reportSwipe.currentIndex == 0? "#94e897" : "#dddbdb"
        anchors {
            top: topBar.bottom
            topMargin: -imgDot.width / 2
            right: locationDot.left
            rightMargin: topBar.width / 10
        }
    }

    //location page dot (page indicator)
    Rectangle {
        id: locationDot
        width: parent.height / 30
        height: width
        radius: height * 0.5
        border.color: reportSwipe.currentIndex == 1? "#539b53" : "#a3a3a3"
        color: reportSwipe.currentIndex == 1? "#94e897" : "#dddbdb"
        anchors {
            top: topBar.bottom
            topMargin: -locationDot.width / 2
            right: categoryDot.left
            rightMargin: topBar.width / 10
        }
    }

    //category page dot (page indicator)
    Rectangle {
        id: categoryDot
        width: parent.height / 30
        height: width
        radius: height * 0.5
        border.color: reportSwipe.currentIndex == 2? "#539b53" : "#a3a3a3"
        color: reportSwipe.currentIndex == 2? "#94e897" : "#dddbdb"
        anchors {
            top: topBar.bottom
            topMargin: -locationDot.width / 2
            horizontalCenter: topBar.horizontalCenter
        }
    }

    //title & description page dot (page indicator)
    Rectangle {
        id: titleDot
        width: parent.height / 30
        height: width
        radius: height * 0.5
        border.color: reportSwipe.currentIndex == 3? "#539b53" : "#a3a3a3"
        color: reportSwipe.currentIndex == 3? "#94e897" : "#dddbdb"
        anchors {
            top: topBar.bottom
            topMargin: -titleDot.width / 2
            left: categoryDot.right
            leftMargin: topBar.width / 10
        }
    }

    //Information (of the pollution) page dot (page indicator)
    Rectangle {
        id: infoDot
        width: parent.height / 30
        height: width
        radius: height * 0.5
        border.color: reportSwipe.currentIndex == 4? "#539b53" : "#a3a3a3"
        color: reportSwipe.currentIndex == 4? "#94e897" : "#dddbdb"
        anchors {
            top: topBar.bottom
            topMargin: -infoDot.width / 2
            left: titleDot.right
            leftMargin: topBar.width / 10
        }
    }

    //use swipe view to go through each step when filling out the report
    SwipeView {
        id: reportSwipe
        currentIndex: 0
        width: parent.width - 20
        height: parent.height / 1.25
        interactive: false
        anchors.top: topBar.bottom
        anchors.topMargin: imgDot.height
        anchors.horizontalCenter: parent.horizontalCenter
        Item {
            id: camera
            Loader {
                anchors.fill: parent
                source: "qrc:/reportPage/reportImgPage.qml"
            }
        }
        Item {
            id: location
            Loader {
                anchors.fill: parent
                source: "qrc:/reportPage/reportLocationPage.qml"
            }
        }
        Item {
            id: type
            Loader {
                anchors.fill: parent
                source: "qrc:/reportPage/reportTypePage.qml"
            }
        }
        Item {
            id: description
            Loader {
                anchors.fill: parent
                source: "qrc:/reportPage/reportDescriptionPage.qml"
            }
        }
        Item {
            id: info
            Loader {
                anchors.fill: parent
                source: "qrc:/reportPage/reportInfoPage.qml"
            }
        }
    }

    // the menu bar, the house button goes back to the home page
    Rectangle {
        id: menuBar
        width: parent.width + 2
        height: parent.height / 16
        border.color: "lightgray"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Image {  // menu icon
            id: menuIcon
            source: "qrc:/img/home.png"
            width: parent.height / 1.4
            height: width
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }
        MouseArea {
            anchors.fill: menuIcon
            onClicked: mainStack.pop()
        }
        Rectangle {  //go to next step
            id: next
            width: parent.width / 5
            height: parent.height / 1.5
            radius: 20
            border.color: "#8ed191"
            color: "#bfffc1"
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: reportSwipe.currentIndex == 4? qsTr("SUBMIT") : qsTr("NEXT")
                font.letterSpacing: 1.2
                font.pixelSize: parent.height / 2
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: reportSwipe.currentIndex == 4? mainStack.push("qrc:/reportPage/thankYouPage.qml") : reportSwipe.currentIndex = reportSwipe.currentIndex + 1
            }
        }        
        Rectangle {  //back button to go to previous page
            id: back
            width: parent.width / 5
            height: parent.height / 1.5
            radius: 20
            border.color: "#d18e8e"
            color: "#ffbfbf"
            anchors.right: next.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            visible: reportSwipe.currentIndex == 0? false : true
            Text {
                text: qsTr("BACK")
                font.letterSpacing: 1.2
                font.pixelSize: parent.height / 2
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: reportSwipe.currentIndex = reportSwipe.currentIndex - 1
            }
        }
    } //menuBar
}
