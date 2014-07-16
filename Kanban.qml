import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1
import QtQuick.XmlListModel 2.0
import "parts"
import "parts/logic.js" as Logic


ApplicationWindow {
    id: applicationWindow1
    title: qsTr("Hello World")

    Component.onCompleted : {
  applicationWindow1.height = maximumHeight;
  applicationWindow1.width = maximumWidth;

}
Flickable{

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: parent.width-10;
        height: parent.height-10;
        color: "#585ef3"
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.bottomMargin: 10
        anchors.fill: parent
        clip: false
        visible: true

        TextEdit {
            id: textEdit1

            width: 80
            height: 20
            text: qsTr("Text Edit")

            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 8
            font.pixelSize: 12
        }
        GridView{

        ColumnLayout {
            id: columnLayout1

            spacing : 2
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 33
            Card {
                Layout.alignment: Qt.AlignCenter
            }



        }

        ColumnLayout {
            id: columnLayout2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 33
            anchors.left: columnLayout1.right
            anchors.leftMargin: 6
            Card {
                Layout.alignment: Qt.AlignCenter
            }
        }

        ColumnLayout {
            id: columnLayout3

            anchors.right: parent.right
            anchors.rightMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 34
            anchors.left: columnLayout2.right
            anchors.leftMargin: 6
            Card {
                Layout.alignment: Qt.AlignCenter
            }
        }
        }

        Text {
            id: text1

            height: 15
            text: qsTr("Text")
            anchors.left: parent.left
            anchors.leftMargin: maximumWidth/2;
            anchors.top: parent.top
            anchors.topMargin: 0

            clip: false
            font.pixelSize: 12
        }






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
