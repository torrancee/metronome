import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Extras 1.4

Item {
    id: item1
    width: 300
    height: 400
    property alias dial: dial
    property alias swipeView: swipeView
    property alias statusIndicator: statusIndicator

    Button {
        id: button
        x: 120
        y: 307
        text: qsTr("Button")
    }

    Button {
        id: button1
        x: 120
        y: 350
        text: qsTr("Button")
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
        }

        Slider {
            id: slider
            x: 300
            y: 36
            width: 300
            value: 0.5
        }
    }
}
