import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

/*
  ***NOTE***
  *All images and icons needs to change to our own images (can't use online source).
  *All data are hard coded right now just to see how it would like, but needs to be able to update it's information based on user's input.
  *Need a database to store all the reports.
  *Should have a login option for government only (ex: government will be able to access to database and change the status about the report, the green/red dot on the report).
  *(if possible) Since the users in this app are anonymous, so it would be nice to blur out people's face if they are in any photos that other user submit when reporting.
  *Once the app is completed, should translate all the English part into Swahili. (If have time or bored, add switch language feature)
*/

ApplicationWindow {
    visible: true
    width: 750 / 1.8  //Reference iPhone 6 screen size (750)
    height: 1334 / 1.8  //Reference iPhone 6 screen size (1334)
    title: qsTr("Splash Page")

    //Use StackView to navigate bewteen pages
    StackView {
        id: mainStack
        initialItem: splashPage
        anchors.fill: parent
    }

    //TODO: Need to automatically go to next page when done loading everything
    //Create page in StackView
    Component {
        id: splashPage
        Page {
            Rectangle {
                id: background
                anchors.fill: parent
                Image {  //background img (Tanzania flag)
                    id: tanzaniaFlag
                    source: "qrc:/img/tanzania flag.png"
                    anchors.fill: parent                    
                    MouseArea {  //Click anywhere to go to next page (see Line 24)
                        anchors.fill: parent
                        onClicked: mainStack.push("qrc:/homePage.qml")
                    }
                }
                Image {  //Logo image
                    id: logoImg
                    source: "qrc:/img/leaf0.png"
                    width: parent.width/2.2
                    height: width
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: -50
                }
                Text {  //Logo name
                    id: logoName
                    text: qsTr("TAZAMA")
                    styleColor: "black"
                    style: Text.Outline
                    font.pointSize: parent.width/22
                    font.family: "Century Gothic"
                    font.bold: true
                    color: "white"
                    anchors.top: logoImg.bottom
                    anchors.horizontalCenter: logoImg.horizontalCenter
                }
                ProgressBar {  //Loading bar
                    id: progressBar
                    width: parent.width / 5
                    height: 2
                    rotation: 180
                    clip: true
                    anchors {
                        bottom: parent.bottom
                        bottomMargin: parent.height / 15
                        horizontalCenter: parent.horizontalCenter
                    }
                    PropertyAnimation {
                        target: progressBar
                        property: "value"
                        from: 1
                        to: 0
                        duration: 2500
                        running: true
                        loops: Animation.Infinite
                    }
                }// progressBar
            }// background
        }// Page
    }// splashPage
}
