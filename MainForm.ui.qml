import QtQuick 2.6
import QtGraphicalEffects 1.6

Rectangle {
    id: column1
    anchors.fill: parent
    color: "#545454"
    Item {
        id: row1
        height: 32
        anchors.topMargin: 2
        anchors.leftMargin: 2
        anchors.right: parent.right
        anchors.rightMargin: 2
        clip: false
        visible: true
        anchors.left: parent.left
        anchors.top: parent.top

        Rectangle {
            id: rectangle3
            color: "#f2f2f2"
            radius: 4
            border.color: "#595959"
            anchors.left: parent.left
            anchors.leftMargin: 2
            anchors.right: rectangle1.left
            anchors.rightMargin: 2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 3
            anchors.top: parent.top
            anchors.topMargin: 3

            TextInput {
                id: textInput1
                text: qsTr("Text Input asd asdasd")
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.bottomMargin: 3
                anchors.topMargin: 3
                anchors.fill: parent
                clip: true
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 16
            }
        }
        DropShadow {
            color: "#555555"
            anchors.fill: rectangle3
            horizontalOffset: 0
            verticalOffset: 0
            radius: 4
            fast: false
            transparentBorder: true
            spread: 0
            samples: 9
            source: rectangle3
        }

        Rectangle {
            id: rectangle1
            width: 100
            color: "#00000000"
            radius: 5
            border.color: "#00000000"
            border.width: 2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 4
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.right: parent.right
            anchors.rightMargin: 2

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("Buscar")
                styleColor: "#ff1f1f"
                textFormat: Text.PlainText
                font.bold: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }
        }
    }

    Item {
        id: typesSelect
        height: 30
        anchors.rightMargin: 4
        anchors.leftMargin: 4
        anchors.top: row1.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.topMargin: 0

        Flickable {
            id: flickable1
            height: 81
            boundsBehavior: Flickable.DragAndOvershootBounds
            flickableDirection: Flickable.HorizontalFlick
            anchors.fill: parent
            contentWidth: row2.width

            Row {
                id: row2
                width: 272
                height: 28

                Check {
                    id: check
                }

                Check {
                    id: check1
                }
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 32
        width: 40
        color: "#727272"
        radius: 4
        border.color: "#393939"
        border.width: 1
        anchors.top: typesSelect.bottom
        anchors.topMargin: 2
        anchors.left: parent.left
        anchors.leftMargin: 4
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 4
    }
    DropShadow {
        color: "#555555"
        anchors.fill: rectangle2
        horizontalOffset: 0
        verticalOffset: 0
        radius: 4
        fast: false
        transparentBorder: true
        spread: 0
        samples: 9
        source: rectangle2
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
