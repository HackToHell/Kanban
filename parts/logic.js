
.pragma library
.import QtQuick 2.0 as QQ
.import QtQml 2.2 as QL

var columns_no,last_searched,board_name;
columns_no = 3; //default columns no
var columns = [];
var name; //debug clean up later


function loadcolumn(column0,rectangle1){
    for(var i=1; i<=columns_no; i++){
    columns[i] = Qt.createComponent("Column.qml");
    //console.log(Component1.errorString());
    if (columns[i].status == QL.Component.Ready){
        name = "column".concat(i-1).concat(".right");
    columns[i].createObject(rectangle1,{id : "column".concat(i), "anchors.left" : name, "width" :getcolwidth(rectangle1) });

    }

    //console.log(Component1.progress);
      //  if(g == null)
        //    console.log("Error");
       // else if (Component1.status == QL.Component.Error) {
            // Error Handling
       //     console.log("Error loading component:", Component1.errorString());
        }
}



function getcolwidth(rectangle1){
    return rectangle1.width/columns_no;

}

function position(curH,curW){



}

function setSize(mw){
    mw.width = maximumWidth;
    mw.height = maximumHeight;
}
