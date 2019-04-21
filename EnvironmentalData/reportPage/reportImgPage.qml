import QtQuick 2.0
import QtQuick.Controls 2.2
import QtMultimedia 5.9
import QtGraphicalEffects 1.0

/*
  ***NOTE***
  *taking photo is optional for the user
  *(if possible) if user hold the button, then it can record the video instead of taking photo. (like snapchap)
  *need a function for if the user wants to retake the photo
*/

Page {
    Text {  //description of the image page
        id: imgText
        text: qsTr("Take a photo of the incident")
        font.pixelSize: parent.height / 27
        font.family: "Century Gothic"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
    }

    Camera {
        id: camera
        position: Camera.FrontFace
        imageCapture {
            onImageCaptured: photoPreview.source = preview
        }
    }

    Rectangle {
        id: imageBox
        width: parent.width - 20
        height: parent.height / 1.3
        radius: 10
        border.color: "lightgray"
        anchors.top: imgText.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
    }

    VideoOutput {
        source: camera
        anchors.fill: imageBox
        focus: visible
        fillMode: VideoOutput.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: imageBox
        }
    }

    //show the photo in the imagebox when user takes a photo
    Image {
        id: photoPreview
        anchors.fill: imageBox
        fillMode: Image.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: imageBox
        }
    }

    //camera button
    Rectangle {
        id: cameraButton
        width: parent.height / 9
        height: width
        radius: height * 0.5
        color: "#ededed"
        border.color: "#dbdbdb"
        border.width: 2
        anchors.top: imageBox.bottom
        anchors.topMargin: cameraButton.height / 3
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle {
            width: parent.width / 1.4
            height: width
            radius: height * 0.5
            border.color: "#dbdbdb"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: camera.imageCapture.capture()
        }
    }
}
