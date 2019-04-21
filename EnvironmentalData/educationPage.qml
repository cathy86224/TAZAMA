import QtQuick 2.0
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0

//this page shows all the information about the 9 categories

Page {
    ScrollView {
        id: scrollView
        width: parent.width - 20
        height: parent.height - 160
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff  //hide scroll bar
        anchors.centerIn: parent
        anchors.verticalCenterOffset:  - 10

        Column {
            Rectangle {  //vegetation
                id: vegetation
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //vegetation icon frame
                    id: treeIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    anchors.top: parent.top
                    anchors.topMargin: treeIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Image {  //vegetation icon
                    source: "qrc:/img/treeIcon.jpg"
                    anchors.fill: treeIconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: treeIconFrame
                    }
                }
                Text {
                    id: vegeText
                    text: qsTr("Vegetation")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: treeIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: vegeInfo
                    text: qsTr("Mimea hutunza ardhi dhidi ya mmomonyoko wa udongo. Pia hutupatia dawa, chakula na huwa makazi ya viumbehai. Vilevile, mimea ni chanzo cha mvua na hondoa hewa ya ukaa angani na hivyo kutuepusha na ongezeko la joto duniani linalochangia kuenea kwa jangwa. Vilevile, mimea hutupatia mazao mbalimbali kama vile mbao, kuni, mkaa, n.k. Hivyo, vitendo vyovyote vya uharibifu wa uoto wa asili havikubaliki. Toa taarifa dhidi ya vitendo hivyo. Pia toa taarifa ya juhudi za upandaji miti.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {  //show description when clicked on a category
                     name: "clicked"
                     PropertyChanges { target: vegetation; height: scrollView.height - 10}
                     PropertyChanges { target: vegeInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: vegetation; height: scrollView.height / 6}
                        PropertyChanges { target: vegeInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //vegetation

            Rectangle {  //waste
                id: waste
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //waste icon frame
                    id: trashIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    anchors.top: parent.top
                    anchors.topMargin: trashIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Image {  //waste icon
                    source: "qrc:/img/trashIcon.png"
                    anchors.fill: trashIconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: trashIconFrame
                    }
                }
                Text {
                    text: qsTr("Waste")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: trashIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: trashInfo
                    text: qsTr("Utupaji hovyo wa taka huchafua madhari ya eneo. Pia huchangia kuenea kwa magonjwa na kuhatairisha afya za viumbehai. Hatahivyo, taka yaweza kuwa rasilimali. Taka jamii za mimea zaweza kutumika kama mbolea (mboji). Baadhi ya taka zaweza kurejerewa na kutumika kutengeneza vifaa ama bidhaa mbalimbali kwa manufaa ya viumbehai. Hivyo, vitendo vyovyote vya utupaji taka hovyo havikubaliki. Toa taarifa ya vitendo hivyo.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: waste; height: scrollView.height - 20}
                     PropertyChanges { target: trashInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: waste; height: scrollView.height / 6}
                        PropertyChanges { target: trashInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //waste

            Rectangle {  //water
                id: water
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //water icon frame
                    id: waterIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    anchors.top: parent.top
                    anchors.topMargin: waterIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Image {  //water icon
                    source: "qrc:/img/waterIcon.jpg"
                    anchors.fill: waterIconFrame
                    fillMode: Image.PreserveAspectCrop
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: waterIconFrame
                    }
                }
                Text {
                    text: qsTr("Water")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: waterIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: waterInfo
                    text: qsTr("Maji ni Uhai. Hutumika katika shughuli mbalimbali za majumbani, mashambani na viwandani. Hivyo, yatupasa kulinda vyanzo vya maji na kutumia rasilimali maji kwa busara. Vitendo vyovyote vinavyochangia kuharibu vyanzo vya maji, kupunguza wingi wa maji ama kuchafua maji havikubaliki. Toa taarifa ya vitendo hivyo ili kulinda wingi na ubora wa vyanzo vya maji kwa manufaa yetu sote.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: water; height: scrollView.height - 100}
                     PropertyChanges { target: waterInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: water; height: scrollView.height / 6}
                        PropertyChanges { target: waterInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //Water

            Rectangle {  //transportation
                id: transportation
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //transportation icon frame
                    id: transportationIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    border.color: "lightgray"
                    anchors.top: parent.top
                    anchors.topMargin: transportationIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: qsTr("Transportation")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: transportationIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: transportationInfo
                    text: qsTr("Usafiri na usafirishaji ni hudma muhimu kwa maisha ya binadamu. Hata hivyo, pale usipozingatia kanuni na taratibu za uhifadhi wa mazingira, huchangia uzalishaji hewa ya ukaa na kuchafua hewa. Pia vitendo vya abiria kujisaidia vichakani wakati wa safari huzalisha na kusambaza taka ambazo huathiri mazingira na afya za viumbehai. Baadhi ya vyombo vya usafiri hubeba kemikali hatarishi ambazo huweza kuchafua mazingira katika matukio kama ya ajali ama wakati wa uoshaji wa magari hayo. Hivyo, matendo haya hayakubaliki. Toa taarifa ya matendo haya.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: transportation; height: scrollView.height + 60}
                     PropertyChanges { target: transportationInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: transportation; height: scrollView.height / 6}
                        PropertyChanges { target: transportationInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //transportation

            Rectangle {  //agriculture
                id: agriculture
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //agriculture icon frame
                    id: agricultureIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    border.color: "lightgray"
                    anchors.top: parent.top
                    anchors.topMargin: agricultureIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: qsTr("Agriculture")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: agricultureIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: agricultureInfo
                    text: qsTr("Shughuli za kilimo ni nguzo muhimu kwa ustawi wa binadamu. Hata hivyo, shughuli hizi zisipofuata kanuni bora huathiri mazingira. Kwa mfano, tabia ya uchomaji moto au ufyekaji miti wakati wa maandalizi ya mashamba hupoteza rutuba ya udongo na huongeza mmomonyoko wa ardhi. Pia huangamiza uoto wa asili, kuua na/ama huathiri makazi ya viumbehai. Vilevile, matumizi mabaya ya viwatilifu, uvamizi wa vyanzo vya maji, miundomninu dhaifu ya umwagiliaji vyote  huathiri mazingira na viumbehai. Hivyo, vitendo hivi havikubaliki, toa taarifa okoa mazingira.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: agriculture; height: scrollView.height + 70}
                     PropertyChanges { target: agricultureInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: agriculture; height: scrollView.height / 6}
                        PropertyChanges { target: agricultureInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //agriculture

            Rectangle {  //mining
                id: mining
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //mining icon frame
                    id: miningIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    border.color: "lightgray"
                    anchors.top: parent.top
                    anchors.topMargin: miningIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: qsTr("Mining")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: miningIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: miningInfo
                    text: qsTr("Uchimbaji wa madini ni mojawapo ya fursa za kuongeza kipato na kuboresha ustawi wa jamii. Hata hivyo, shughuli hizi huchangia uharibufu na uchafuzi mkubwa wa mazingira na vyanzo vya maji. Kwa mfano, uchimbaji holela wa madini ya ujenzi kama vile vifusi, mchanga, kokoto na madini mengine huacha mashimo, kuathiri mimea na huongeza mmomonyoko wa udongo ambao huchangia mito kupungua kina na kusababisha mafuriko kutokana na mchanga kujaa mtoni. Hivyo, vitendo vya aina hii havikubaliki. Toa taarifa, linda mazingira.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: mining; height: scrollView.height + 30}
                     PropertyChanges { target: miningInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: mining; height: scrollView.height / 6}
                        PropertyChanges { target: miningInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //mining

            Rectangle {  //fishery
                id: fishery
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //fishery icon frame
                    id: fisheryIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    border.color: "lightgray"
                    anchors.top: parent.top
                    anchors.topMargin: fisheryIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: qsTr("Fishery")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: fisheryIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: fisheryInfo
                    text: qsTr("Uvuvi ni mojawapo ya nguzo muhimu za kiuchumi kwa watanzania. Hata hivyo, uvuvi haramu umechangia kwa kiasi kikubwa kupungua ama kutoweka kwa wingi na aina ya samaki. Uvuvi haramu kama vile: matumizi ya sumu, milipuko, nyavu zenye matundu madogo, uharibifu wa mazalia ya samaki; ukaushaji wa mito/mabwawa havikubaliki. Toa taarifa ya vitendo hivyo.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: fishery; height: scrollView.height - 110}
                     PropertyChanges { target: fisheryInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: fishery; height: scrollView.height / 6}
                        PropertyChanges { target: fisheryInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //fishery

            Rectangle {  //wildlife
                id: wildlife
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //wildlife icon frame
                    id: wildlifeIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    border.color: "lightgray"
                    anchors.top: parent.top
                    anchors.topMargin: wildlifeIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: qsTr("Wildlife")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: wildlifeIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: wildlifeInfo
                    text: qsTr("Wanyapori ni mojawapo ya fahari za Taifa. Utalii huliingizia taifa mapato yanayosaidia kuijenga nchi. Hatahivyo, matendo ya kibinadamu kama vile uchomaji moto, ujangili, uvamizi wa makazi ama mapito ya wanyamapori kwa shughuli za kilimo, mifugo ama makazi huongeza kasi ya kutoweka kwa viumbe hawa. Baadhi ya wanyamapori walio katika hatari ya kutoweka ni pamoja na Faru, Sheshe na Tembo. Hivyo, toa taarifa yeyote inayotishia usalama wa wanyamapori.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: wildlife; height: scrollView.height}
                     PropertyChanges { target: wildlifeInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: wildlife; height: scrollView.height / 6}
                        PropertyChanges { target: wildlifeInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            }  //wildlife

            Rectangle {  //livestock
                id: livestock
                width: scrollView.width
                height: scrollView.height / 6
                radius: 10
                border.color: "lightgray"
                Rectangle {  //livestock icon frame
                    id: livestockIconFrame
                    width: height
                    height: scrollView.height / 12
                    radius: height * 0.5
                    border.color: "lightgray"
                    anchors.top: parent.top
                    anchors.topMargin: livestockIconFrame.height / 2
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: qsTr("Livestock")
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 30
                    anchors.verticalCenter: livestockIconFrame.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: livestockInfo
                    text: qsTr("Mifugo ni mojawapo ya fursa ya kiuchumi nchini. Nyama na maziwa ni chanzo muhimu cha virutubisho aina ya protini ambayo husaidia kujenga miili yetu. Pia, mazao ya mifugo kama vile ngozi, hutengeneza vifaa mbalimbali kama vile viatu, nguo na mikoba. Hata hivyo, ufugaji usiozingatia kanuni bora huchangia uharibifu wa vyanzo vya maji, mazalia ya samaki pamoja na upotevu wa makazi ya wanyamapori. Hivyo, toa taarifa ya vitendo hivyo ili kuokoa mazingira.")
                    visible: false
                    width: parent.width / 1.1
                    wrapMode: Text.WordWrap
                    lineHeight: 1.2
                    font.family: "Century Gothic"
                    font.pointSize: scrollView.height / 55
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 35
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.state == "clicked"? parent.state = "default" : parent.state = "clicked"
                }
                states: [
                    State {
                     name: "clicked"
                     PropertyChanges { target: livestock; height: scrollView.height - 20}
                     PropertyChanges { target: livestockInfo; visible: true}
                    },
                    State {
                        name: "default"
                        PropertyChanges { target: livestock; height: scrollView.height / 6}
                        PropertyChanges { target: livestockInfo; visible: false}
                    }
                ]
                transitions: [
                    Transition {
                        from: ""
                        to: "clicked"
                        reversible: false
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    },
                    Transition {
                        from: "default"
                        to: "clicked"
                        reversible: true
                        ParallelAnimation {
                            NumberAnimation {
                                properties: "height"
                                duration: 200
                            }
                        }
                    }
                ]
            } //lifestock
        } //column
    } //scrollView

    // title of the report
    Rectangle {
        id: title
        width: parent.width
        height: parent.height / 15
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: qsTr("About the Environment")
            font.family: "Century Gothic"
            font.pixelSize: parent.height / 2
            anchors.centerIn: parent
        }
    }

    // return to home page
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
