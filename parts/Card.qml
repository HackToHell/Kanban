import QtQuick 2.0

Item {

    id: card
Rectangle {

    width: 200
    height: 100

    Text {
        id: ddate
        x: 8
        y: 8
        text: qsTr("Due Date & Time")
        anchors.leftMargin: 8
        anchors.topMargin: 8
        anchors.top: parent.top
        anchors.left: parent.left
        font.pixelSize: 12
    }

    Text {
        id: id
        x: 171
        y: 8
        text: qsTr("id")
        anchors.right: parent.right
        anchors.topMargin: 8
        anchors.top: parent.top
        anchors.bottom: ddate.bottom
        anchors.verticalCenter: ddate.verticalCenter
        font.pixelSize: 12
        anchors.rightMargin: 8
    }

    TextEdit {
        id: data
        x: 8
        y: 28
        width: 184
        height: 49
        text: qsTr("Data")
        anchors.right: parent.right
        anchors.rightMargin: 11
        anchors.leftMargin: 8
        anchors.topMargin: 6
        anchors.top: ddate.bottom
        anchors.left: parent.left
        font.pixelSize: 12
    }

    Text {
        id: priority
        x: 8
        y: 78
        text: qsTr("Text")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.leftMargin: 8
        anchors.topMargin: 6
        anchors.top: data.bottom
        anchors.left: parent.left
        font.pixelSize: 12
    }

    Text {
        id: tag
        x: 168
        y: 83
        text: qsTr("Text")
        anchors.top: priority.top
        anchors.bottom: priority.bottom
        anchors.verticalCenter: priority.verticalCenter
        font.pixelSize: 12
    }
}
}
