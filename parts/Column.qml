
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1
import QtQuick.XmlListModel 2.0
import "../parts"


ColumnLayout {
    anchors.leftMargin: 15
    anchors.bottom:parent.bottom
    anchors.bottomMargin: 5
    anchors.top: parent.top
    anchors.topMargin: 5
    Card {
        Layout.alignment: Qt.AlignCenter
    }


    Component.onCompleted: {
    console.log("Loaded");
    }



}
