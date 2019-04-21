import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

/*
  ***NOTE***
  *this page will show the information on the type of incident that the user choose from the reportTypePage
  *should change the title, icon, and the description of the incident based on user's choice from the reportTypePage
*/

Page {
    Text {
        id: factsText
        text: qsTr("Facts on Vegetation")
        font.pixelSize: parent.height / 27
        font.family: "Century Gothic"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: iconFrame.verticalCenter
    }

    //icon of the incident frame
    Rectangle {
        id: iconFrame
        width: height
        height: parent.height / 15
        radius: height * 0.5
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
    }

    //icon of the incident
    Image {
        source: "qrc:/img/treeIcon.jpg"
        anchors.fill: iconFrame
        fillMode: Image.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: iconFrame
        }
    }

    //description of the incident
    Text {
        text: qsTr("Mimea hutunza ardhi dhidi ya mmomonyoko wa  udongo. Pia hutumika kama dawa, chakula pamoja ng makazi kaw viumbehai. Vilevile, huhifadhi hewa ya ukaa na hivyo kutuepusha na ongezeko la joto duniani linalochangia kuenea kwa ukame na magonjwa. Pia mimea hutupatia mvua na mazao yake hutupatia mbao, kuni, mkaa, n.k. Hivyo hatuna budi kutunza uoto wetu wa asili.")
        font.family: "Century Gothic"
        font.pixelSize: parent.height / 30
        lineHeight: 1.5
        width: parent.width / 1.2
        wrapMode: Text.WordWrap
        anchors.centerIn: parent
    }
}
