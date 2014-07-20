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
        function getcolwidth(){
            return rectangle1.width/Logic.columns_no;

        }

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
            id: column1


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
                var Component = Qt.createComponent("parts/Column.qml");
                console.log(Component.errorString());

                if (Component.status == Component.Ready){
                    var g =Qt.createObject(column1,{"anchors.left" : parent.right });
                    g.id="column2";
                    console.log(Component.progress);
                    if(g == null)
                        console.log("Error");
                }
                else if (Component.status == Component.Error) {
                        // Error Handling
                        console.log("Error loading component:", Component.errorString());
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
