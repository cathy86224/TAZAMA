import QtQuick 2.0
import QtQuick.Controls 2.2

//pick the location of the incident

Page {
    Text {
        text: qsTr("Select the district of the incident")
        font.pixelSize: parent.height / 27
        font.family: "Century Gothic"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
    }
    Tumbler {
        id: location
        width: parent.width
        height: parent.height / 1.5
        font.bold: true
        font.pixelSize: parent.height / 15
        font.letterSpacing: 1.2
        font.family: "Century Gothic"
        model: ["Kilosa","Kilombero","Ulanga","Mvomero","Morogoro Rural","Morogoro Urban","Ifakara","Malinyi","Gairo"]
        currentIndex: 0
        visibleItemCount: 3
        anchors.centerIn: parent
    }
}
