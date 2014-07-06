import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1
import QtQuick.XmlListModel 2.0
import "parts"


ApplicationWindow {
    id: applicationWindow1
    title: qsTr("Hello World")
    height : 200
    width : 200
//Component.onCompleted : {
//     applicationWindow1.height = maximumHeight;
//    applicationWindow1.width = maximumWidth;

//}


    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 200
        height: 200
        color: "#585ef3"
        anchors.leftMargin: -255
        anchors.topMargin: -61
        anchors.rightMargin: -100
       anchors.bottomMargin: -282
        anchors.fill: parent
        clip: false
        visible: true
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#565cf6"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }

        }

        TextEdit {
            id: textEdit1
            x: 83
            y: 14
            width: 80
            height: 20
            text: qsTr("Text Edit")
            z: 2
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 8
            font.pixelSize: 12
        }

        ColumnLayout {
            id: columnLayout1
            width: 122
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 33
        }

        ColumnLayout {
            id: columnLayout2
            width: 100
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 33
            anchors.left: columnLayout1.right
            anchors.leftMargin: 6
        }

        ColumnLayout {
            id: columnLayout3
            height: 301
            anchors.right: parent.right
            anchors.rightMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 34
            anchors.left: columnLayout2.right
            anchors.leftMargin: 6
        }

        Text {
            id: text1
            x: 124
            height: 14
            text: qsTr("Text")
            anchors.top: parent.top
            anchors.topMargin: 0
            z: 3
            clip: false
            font.pixelSize: 12
        }






    }



    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }


}
