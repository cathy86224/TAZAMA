import QtQuick 2.10
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.0

/*
  ***NOTE***
  *Each report's image needs to be the photo that the user take when they report the incident
  *Each incident's icon should be the category that the user reported (there are total of 9 categories)
*/

Page {
    //Use ScrollView to have the news feed effect
    ScrollView {
        id: scrollView
        width: parent.width - 20
        height: parent.height - 140
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff  //hide scroll bar
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -10

        //TODO: needs to be able to update the recent report to the news feed
        //below are hard coded data to demonstrate news feed feature/effect, but needs to be able to add more reports
        Column {
            spacing: 25

            //Want to have DropShadow effect for each report box, but don't know how to implement in the Column function (optional)

            //Report example 1
            Rectangle {
                id: incident0DS  //DS = DropShadow
                width: scrollView.width
                height: scrollView.height / 1.8
                radius: 18
                color: "#e2e2e2"                
                MouseArea {  //user can click on the report and view more detail about the report
                    anchors.fill: parent
                    onClicked: mainStack.push("qrc:/example1Info.qml")
                }               
                Rectangle {  //Rectangle box for the incident
                    id: incident0
                    width: parent.width - 5
                    height: parent.height - 5
                    radius: 18
                }                
                Image {  //Image for the incident
                    source: "qrc:/img/incident0.jpg"
                    anchors.fill: incident0
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident0
                    }
                }
                Rectangle {  //Description box for the reported incident (The semi-transparent black rectangle on the lower part of the report)
                    id: data0
                    width: incident0.width
                    height: incident0.height / 4.5
                    radius: 18
                    color: "black"
                    opacity: 0.6
                    anchors.bottom: incident0.bottom
                }

                //The dot represent if the incident has been solve by the government or not
                //Red dot is still in procress, and green dot is solved
                Rectangle {
                    width: data0.height / 8
                    height: width
                    radius: height * 0.5
                    color: "red"
                    anchors {
                        verticalCenter: data0.verticalCenter
                        left: data0.left
                        leftMargin: 15
                    }
                }               
                Text {  //Title of the incident
                    id: incident0Name
                    text: qsTr("Dumping in river")
                    color: "white"
                    font.bold: true
                    font.family: "Century Gothic"
                    font.pointSize: data0.height / 5.5
                    anchors {
                        top: data0.top
                        topMargin: 10
                        left: data0.left
                        leftMargin: 35
                    }
                }               
                Text {  //Time when user report the incident
                    text: qsTr("Feb. 18th. 11:05am")
                    color: "white"
                    opacity: 0.7
                    font.family: "Century Gothic"
                    font.pointSize: data0.height / 7.5
                    anchors {
                        top: incident0Name.bottom
                        topMargin: 5
                        left: data0.left
                        leftMargin: 35
                    }
                }
                Rectangle {  //incident's icon frame (to make circle shape icon)
                    id: incident0IconFrame
                    width: height
                    height: data0.height
                    radius: height*0.5
                    anchors {
                        right: data0.right
                        rightMargin: 20
                        bottom: data0.top
                        bottomMargin: -incident0IconFrame.width / 2
                    }
                }                
                Image {  //incident's icon represent different categories
                    source: "qrc:/img/waterIcon.jpg"
                    anchors.fill: incident0IconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident0IconFrame
                    }
                }
            } //report example 1

            //Report example 2 (same format as example 1)
            Rectangle {
                id: incident1DS
                width: scrollView.width
                height: scrollView.height / 1.8
                radius: 18
                color: "#e2e2e2"
                MouseArea {
                    anchors.fill: parent
                    onClicked: mainStack.push("qrc:/example2Info.qml")
                }
                Rectangle {
                    id: incident1
                    width: parent.width - 5
                    height: parent.height - 5
                    radius: 18
                }
                Image {
                    source: "qrc:/img/treedown.jpg"
                    anchors.fill: incident1
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident1
                    }
                }
                Rectangle {
                    id: data1
                    width: incident1.width
                    height: incident1.height / 4.5
                    radius: 18
                    color: "black"
                    opacity: 0.6
                    anchors.bottom: incident1.bottom
                }
                Rectangle {  //green dot
                    width: data1.height / 8
                    height: width
                    radius: height*0.5
                    color: "green"
                    anchors {
                        verticalCenter: data1.verticalCenter
                        left: data1.left
                        leftMargin: 15
                    }
                }
                Text {
                    id: incident1Name
                    text: qsTr("Trees cut down in park")
                    color: "white"
                    font.bold: true
                    font.family: "Century Gothic"
                    font.pointSize: data1.height / 5.5
                    anchors {
                        top: data1.top
                        topMargin: 10
                        left: data1.left
                        leftMargin: 35
                    }
                }
                Text {
                    text: qsTr("Jan. 10th. 3:54pm")
                    color: "white"
                    opacity: 0.7
                    font.family: "Century Gothic"
                    font.pointSize: data1.height / 7.5
                    anchors {
                        top: incident1Name.bottom
                        topMargin: 5
                        left: data1.left
                        leftMargin: 35
                    }
                }
                Rectangle {
                    id: incident1IconFrame
                    width: height
                    height: data1.height
                    radius: height*0.5
                    anchors {
                        right: data1.right
                        rightMargin: 20
                        bottom: data1.top
                        bottomMargin: -incident1IconFrame.width / 2
                    }
                }
                Image {
                    source: "qrc:/img/treeIcon.jpg"
                    anchors.fill: incident1IconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident1IconFrame
                    }
                }
            } //report example 2

            //Report example 3 (same format as example 1)
            Rectangle {
                id: incident2DS
                width: scrollView.width
                height: scrollView.height / 1.8
                radius: 18
                color: "#e2e2e2"
                MouseArea {
                    anchors.fill: parent
                    onClicked: mainStack.push("qrc:/example3Info.qml")
                }
                Rectangle {
                    id: incident2
                    width: parent.width - 5
                    height: parent.height - 5
                    radius: 18
                }
                Image {
                    source: "qrc:/img/trash.jpg"
                    anchors.fill: incident2
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident2
                    }
                }
                Rectangle {
                    id: data2
                    width: incident2.width
                    height: incident2.height / 4.5
                    radius: 18
                    color: "black"
                    opacity: 0.6
                    anchors.bottom: incident2.bottom
                }
                Rectangle {  //green dot
                    width: data2.height / 8
                    height: width
                    radius: height * 0.5
                    color: "green"
                    anchors {
                        verticalCenter: data2.verticalCenter
                        left: data2.left
                        leftMargin: 15
                    }
                }
                Text {
                    id: incident2Name
                    text: qsTr("Trash on the street")
                    color: "white"
                    font.bold: true
                    font.family: "Century Gothic"
                    font.pointSize: data2.height / 5.5
                    anchors {
                        top: data2.top
                        topMargin: 10
                        left: data2.left
                        leftMargin: 35
                    }
                }
                Text {
                    text: qsTr("Mar. 21th. 2:01pm")
                    color: "white"
                    opacity: 0.7
                    font.family: "Century Gothic"
                    font.pointSize: data2.height / 7.5
                    anchors {
                        top: incident2Name.bottom
                        topMargin: 5
                        left: data2.left
                        leftMargin: 35
                    }
                }
                Rectangle {
                    id: incident2IconFrame
                    width: height
                    height: data2.height
                    radius: height*0.5
                    anchors {
                        right: data2.right
                        rightMargin: 20
                        bottom: data2.top
                        bottomMargin: -incident2IconFrame.width / 2
                    }
                }
                Image {
                    source: "qrc:/img/trashIcon.png"
                    anchors.fill: incident2IconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident2IconFrame
                    }
                }
            } // report example 3

            //Report example 4 (same format as example 1)
            Rectangle {
                id: incident3DS
                width: scrollView.width
                height: scrollView.height / 1.8
                radius: 18
                color: "#e2e2e2"
                Rectangle {
                    id: incident3
                    width: parent.width - 5
                    height: parent.height - 5
                    radius: 18
                }
                Image {
                    source: "qrc:/img/incident3.jpg"
                    anchors.fill: incident3
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident3
                    }
                }
                Rectangle {
                    id: data3
                    width: incident3.width
                    height: incident3.height / 4.5
                    radius: 18
                    color: "black"
                    opacity: 0.6
                    anchors.bottom: incident3.bottom
                }
                Rectangle {  //red dot
                    width: data3.height / 8
                    height: width
                    radius: height * 0.5
                    color: "red"
                    anchors {
                        verticalCenter: data3.verticalCenter
                        left: data3.left
                        leftMargin: 15
                    }
                }
                Text {
                    id: incident3Name
                    text: qsTr("Trash in the river")
                    color: "white"
                    font.bold: true
                    font.family: "Century Gothic"
                    font.pointSize: data3.height / 5.5
                    anchors {
                        top: data3.top
                        topMargin: 10
                        left: data3.left
                        leftMargin: 35
                    }
                }
                Text {
                    text: qsTr("Aug. 8th. 10:34am")
                    color: "white"
                    opacity: 0.7
                    font.family: "Century Gothic"
                    font.pointSize: data3.height / 7.5
                    anchors {
                        top: incident3Name.bottom
                        topMargin: 5
                        left: data3.left
                        leftMargin: 35
                    }
                }
                Rectangle {
                    id: incident3IconFrame
                    width: height
                    height: data3.height
                    radius: height*0.5
                    anchors {
                        right: data3.right
                        rightMargin: 20
                        bottom: data3.top
                        bottomMargin: -incident3IconFrame.width / 2
                    }
                }
                Image {
                    source: "qrc:/img/trashIcon.png"
                    anchors.fill: incident3IconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: incident3IconFrame
                    }
                }
            }
        }// column
    }// scrollView

    //TODO: change the location name depends on the user's choice in the setting page

    Rectangle {
        id: topBar
        width: parent.width
        height: parent.height / 15
        color: "white"
        border.color: "#dddddd"
        anchors.top: parent.top
        Text {  //location name
            text: qsTr("Morogoro")
            anchors.centerIn: parent
            font.bold: true
            font.pointSize: parent.height / 3
            font.family: "Century Gothic"
            font.letterSpacing: 1.2
        }
        MenuBar {  //Add drop-down feature, total 9 categories. And should be able to sort the reports based on the categories
            Menu {
                id: category
                title: qsTr ("Category")
                MenuItem { text: qsTr ("Recent"); onClicked: category.title = "Recent"}
                MenuItem { text: qsTr ("Vegetation"); onClicked: category.title = "Vegetation"}
                MenuItem {text: qsTr ("Waste"); onClicked: category.title = "Waste"}
                MenuItem {text: qsTr ("Water"); onClicked: category.title = "Water"}
                MenuItem {text: qsTr ("Transportation"); onClicked: category.title = "Transportation"}
                MenuItem {text: qsTr ("Agriculture"); onClicked: category.title = "Agriculture"}
                MenuItem {text: qsTr ("Mining"); onClicked: category.title = "Mining"}
                MenuItem {text: qsTr ("Fishery"); onClicked: category.title = "Fishery"}
                MenuItem {text: qsTr ("Wildlife"); onClicked: category.title = "Wildlife"}
                MenuItem {text: qsTr ("Livestock"); onClicked: category.title = "Livestock"}
            }
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }// topBar (title)

    //add shadow to the top bar
    DropShadow {
        anchors.fill: topBar
        verticalOffset: 2
        radius: 8.0
        samples: 15
        color: "#80000000"
        source: topBar
    }

    //Icons
    Rectangle {
        id: bottomBar
        width: parent.width
        height: parent.height / 16
        color: "#f7f7f7"
        border.color: "#dddddd"
        anchors.bottom: parent.bottom
        Image {  //write a new report icon
            id: reportIcon
            source: "qrc:/img/reportIcon.png"
            width: parent.height/1.5
            height: width
            opacity: 0.8
            anchors {
                bottom: parent.bottom
                bottomMargin: 5
                left: parent.left
                leftMargin: 20
            }
            MouseArea { //click to go to the report page
                anchors.fill: reportIcon
                onClicked: mainStack.push("qrc:/reportPage/reportPage.qml")
            }
        }
        Image {  //information/purpose about this app icon
            id: infoIcon
            source: "qrc:/img/infoIcon.png"
            width: parent.height/1.5
            height: width
            opacity: 0.8
            anchors {
                bottom: parent.bottom
                bottomMargin: 5
                left: reportIcon.right
                leftMargin: 20
            }
            MouseArea {  //click to go to the information page
                anchors.fill: infoIcon
                onClicked: mainStack.push("qrc:/infoPage.qml")
            }
        }
        Image {  //setting icon
            id: settingIcon
            source: "qrc:/img/settingIcon.png"
            width: parent.height/1.5
            height: width
            opacity: 0.8
            anchors {
                bottom: parent.bottom
                bottomMargin: 5
                left: infoIcon.right
                leftMargin: 20
            }
            MouseArea {  //click to go to the setting page
                anchors.fill: settingIcon
                onClicked: mainStack.push("qrc:/settingPage.qml")
            }
        }
        Image {  //facts on all of the pollution icon
            id: bookIcon
            source: "qrc:/img/bookIcon.png"
            width: parent.height/1.5
            height: width
            opacity: 0.8
            anchors {
                bottom: parent.bottom
                bottomMargin: 5
                left: settingIcon.right
                leftMargin: 20
            }
            MouseArea {  //click to go to the education page
                anchors.fill: bookIcon
                onClicked: mainStack.push("qrc:/educationPage.qml")
            }
        }
    }// bottomBar (icons)
}
