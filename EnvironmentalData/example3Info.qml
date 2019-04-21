import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

/*
  *This page is an example of when a user click on a report in the home page
  */

Page {
    //use scroll view to fit all the infomation about the report
    ScrollView {
        id: scrollview
        width: parent.width - 40
        height: parent.height / 1.2
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff //hide scroll bar
        anchors {
            top: time.bottom
            topMargin: 10
            horizontalCenter: parent.horizontalCenter
        }

        Column {
            spacing: 25

            //provide which category the incident is in
            Rectangle {
                id: category
                width: scrollview.width
                height: scrollview.height / 18
                radius: 10
                border.color: "lightgray"
                Text {  //name of the category
                    id: categoryName
                    text: qsTr("Waste")
                    font.family: "Century Gothic"
                    font.bold: true
                    font.letterSpacing: 1.5
                    font.pixelSize: parent.height / 2
                    anchors.centerIn: parent
                }
                Rectangle {  //frame for the category icon
                    id: categoryIconFrame
                    width: category.height - 2
                    height: width
                    radius: height * 0.5
                    anchors.left: parent.left
                    anchors.leftMargin: 1
                    anchors.verticalCenter: parent.verticalCenter
                }
                Image {  //category icon
                    id: categoryIcon
                    source: "qrc:/img/trashIcon.png"
                    anchors.fill: categoryIconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: categoryIconFrame
                    }
                }
            }

            // state the facts and effects about the pollution
            Rectangle {
                id: facts
                width: scrollview.width
                height: scrollview.height - 90
                radius: 10
                border.color: "lightgray"
                Text {
                    text: qsTr("Utupaji hovyo wa taka huchafua madhari ya eneo. Pia huchangia kuenea kwa magonjwa na kuhatairisha afya za viumbehai. Hatahivyo, taka yaweza kuwa rasilimali. Taka jamii za mimea zaweza kutumika kama mbolea (mboji). Baadhi ya taka zaweza kurejerewa na kutumika kutengeneza vifaa ama bidhaa mbalimbali kwa manufaa ya viumbehai. Hivyo, vitendo vyovyote vya utupaji taka hovyo havikubaliki. Toa taarifa ya vitendo hivyo.")
                    font.family: "Century Gothic"
                    font.pixelSize: parent.height / 24
                    lineHeight: 1.2
                    width: parent.width - 40
                    wrapMode: Text.WordWrap
                    anchors.centerIn: parent
                }
            }

            // the photo that user took when they submit the report
            Rectangle {
                id: image
                width: scrollview.width
                height: scrollview.height / 2
                radius: 10
                Image {
                    source: "qrc:/img/trash.jpg"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectCrop
                }
            }

            // user's description about the incident
            Rectangle {
                id: description
                width: scrollview.width
                height: scrollview.height / 2
                radius: 10
                border.color: "lightgray"
                Text {
                    text: qsTr("User's description on the reported incident.")
                    font.family: "Century Gothic"
                    font.pixelSize: parent.height / 15
                    width: parent.width
                    wrapMode: Text.WordWrap
                    anchors.centerIn: parent
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            //just adding white space on the bottom of the scroll view
            //so looks better overall when user scroll all the way to the bottom
            Rectangle {
                width: parent.width
                height: parent.height / 40
            }
        }
    } //scrollview

    // title of the report
    Rectangle {
        id: title
        width: parent.width
        height: parent.height / 15
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: qsTr("Trash on the street")
            font.family: "Century Gothic"
            font.bold: true
            font.pixelSize: parent.height / 2
            anchors.centerIn: parent
        }
    }

    // time when user submitted a report
    Rectangle {
        id: time
        width: parent.width
        height: parent.height / 18
        anchors.top: title.bottom
        Text {
            id: date
            text: qsTr("2:01pm")
            font.bold: true
            font.family: "Century Gothic"
            font.pixelSize: parent.height / 2.5
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 20
            }
        }
        Text {
            id: location
            text: qsTr("Morogoro")
            font.bold: true
            font.family: "Century Gothic"
            font.pixelSize: parent.height / 2.5
            anchors.centerIn: parent
        }
        Rectangle {  // the red/green dot
            id: indicator
            width: parent.height / 2.8
            height: width
            radius: height * 0.5
            color: "green"
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 20
            }
        }
    } //time

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
    }
}
