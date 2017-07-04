import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Extras 1.4

Item {
    id: item1
    width: 300
    height: 450
    property alias currentTempo: currentTempo
    property alias stop: stop
    property alias start: start
    property alias dial: dial
    property alias swipeView: swipeView
    property alias statusIndicator: statusIndicator

    Button {
        id: start
        x: 118
        y: 308
        text: qsTr("START")
    }

    Button {
        id: stop
        x: 118
        y: 346
        width: 64
        height: 32
        text: qsTr("STOP")
    }

    StatusIndicator {
        id: statusIndicator
        x: 68
        y: 22
        width: 164
        height: 105
    }

    SwipeView {
        id: swipeView
        x: 0
        y: 162
        width: 300
        height: 116

        Dial {
            id: dial
            x: 0
            width: 300
            height: 116
            minimumValue: 40
            maximumValue: 240
            value: 60
            stepSize: 1
        }

        Slider {
            id: slider
            x: 300
            y: 36
            width: 300
            value: 0.5
        }
    }

    TextField {
        id: currentTempo
        x: 118
        y: 389
        width: 64
        height: 29
        text: qsTr("120")
        horizontalAlignment: Text.AlignHCenter
    }
}
