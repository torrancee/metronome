import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Extras 1.4

Item {
    id: item1
    width: 300
    height: 450
    property alias slider: slider
    property alias currentTempo: currentTempo
    property alias stop: stop
    property alias start: start
    property alias dial: dial
    property alias swipeView: swipeView
    property alias statusIndicator: statusIndicator

    Button {
        id: start
        x: 190
        y: 285
        text: qsTr("START")
    }

    Button {
        id: stop
        x: 190
        y: 327
        width: 64
        height: 32
        text: qsTr("STOP")
    }

    StatusIndicator {
        id: statusIndicator
        x: 68
        y: 22
        width: 164
        height: 80
    }

    SwipeView {
        id: swipeView
        x: 0
        y: 150
        width: 300
        height: 116
        currentIndex: tabBar.currentIndex

        Dial {
            id: dial
            x: 0
            width: 300
            height: 116
            minimumValue: 40
            maximumValue: 240
            value: 120
            stepSize: 1
        }

        Slider {
            id: slider
            x: 300
            y: 0
            width: 300
            height: 116
            stepSize: 1
            font.capitalization: Font.AllLowercase
            font.family: "Arial"
            padding: 5
            font.weight: Font.DemiBold
            from: 40
            to: 240
            value: 120
        }
    }

    TextField {
        id: currentTempo
        x: 190
        y: 372
        width: 64
        height: 29
        text: qsTr("120")
        horizontalAlignment: Text.AlignHCenter
    }

    TabBar {
        id: tabBar
        y: 127
        height: 17
        font.pointSize: 10
        anchors.rightMargin: 0
        anchors.bottomMargin: 6
        anchors.leftMargin: 0
        TabButton {
            text: "DIAL"
        }

        TabButton {
            text: "SLIDER"
        }
        anchors.bottom: swipeView.top
        anchors.left: swipeView.left
        anchors.right: swipeView.right
    }

    Switch {
        id: switch1
        x: 18
        y: 281
        width: 103
        height: 40
        text: qsTr("Quarter")
        font.pointSize: 9
    }

    Switch {
        id: switch2
        x: 18
        y: 323
        width: 112
        height: 36
        text: qsTr("Quaver")
        font.pointSize: 9
    }

    Switch {
        id: switch3
        x: 18
        y: 365
        width: 126
        height: 36
        text: qsTr("Semiquaver")
        font.pointSize: 9
    }

}
