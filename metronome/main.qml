import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 300
    height: 450
    title: qsTr("Metronome")
    background: Rectangle {
        id: backgr
        width: 300
        height: 450
        color: "grey"
    }

    onWidthChanged: {
        backgr.width = width
    }

    Page1{

        }

}
