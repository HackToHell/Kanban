
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1
import QtQuick.XmlListModel 2.0
import "../parts"

ColumnLayout {

    Card {
        Layout.alignment: Qt.AlignCenter
    }


    Component.onCompleted: {
    console.log("Loaded");
    }



}
