import QtQuick 2.0
import QtQuick.Controls 2.2

//thank the user for submitting the report

Page {
    Text {
        text: qsTr("Thank you for your submission! \nThis information will be used to help the Morogoro environment. Your personal information will be kept anonymous.")
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 30
        lineHeight: 1.5
        width: parent.width / 1.2
        wrapMode: Text.WordWrap
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
    }

    //return to home page
    Image {
        id: menuIcon
        source: "qrc:/img/home.png"
        width: parent.height / 20
        height: width
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        MouseArea {
            anchors.fill: parent
            onClicked: mainStack.push("qrc:/homePage.qml")
        }
    }
}
