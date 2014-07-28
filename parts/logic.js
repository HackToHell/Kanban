
.pragma library
.import QtQuick 2.0 as QQ

var columns_no,last_searched,board_name;
columns_no = 3; //default columns no


function loadcolumn(column1,rectangle1){
    var Component1 = Qt.createComponent("Column.qml");
    console.log(Component1.errorString());
    var g =Component1.createObject(column1,{"anchors.left" : column1.right,"anchors.leftMargin": 5,"anchors.bottom" : rectangle1.bottom," anchors.bottomMargin" : 5,"anchors.top" :  rectangle1.top, "anchors.topMarigin" :  5});


    console.log(Component1.progress);
        if(g == null)
            console.log("Error");
        else if (Component1.status == Component1.Error) {
            // Error Handling
            console.log("Error loading component:", Component1.errorString());
        }
}

function position(curH,curW){



}

function setSize(mw){
    mw.width = maximumWidth;
    mw.height = maximumHeight;
}
