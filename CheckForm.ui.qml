import QtQuick 2.4


    Item {
        id: row1
        x: 0
        width: 266
        height: 28
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        Rectangle{ width: 16 ;height: 16 ; anchors.left: parent.left; anchors.leftMargin: 2; anchors.verticalCenter: parent.verticalCenter}
        Text{ text: "CheckText" ; anchors.left: parent.left; anchors.leftMargin: 0; anchors.verticalCenter: parent.verticalCenter }
    }


