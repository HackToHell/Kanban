
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1
import QtQuick.XmlListModel 2.0
import "parts"
import "parts/logic.js" as Logic


ApplicationWindow {
    id: applicationWindow1
    width: 1280
    height: 720
    title: qsTr("Hello World")

//    Component.onCompleted : {
//  applicationWindow1.height = maximumHeight;
//  applicationWindow1.width = maximumWidth;

//}


    Rectangle {
        id: rectangle1

        color: "#585ef3"
        anchors.fill: parent
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


        ColumnLayout {
            id: column0


            width : Logic.getcolwidth(rectangle1)
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5
            Card {
                Layout.alignment: Qt.AlignCenter
            }

            Component.onCompleted: {
                Logic.loadcolumn(column0,rectangle1);
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
            font.pixelSize: 15
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
