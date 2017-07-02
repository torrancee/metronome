import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Extras 1.4

Item {
    width: 300

    ToggleButton {
        id: toggleButton
        x: 94
        y: 44
        text: qsTr("Button")
    }

    SpinBox {
        id: spinBox
        x: 106
        y: 178
    }

    Button {
        id: button
        x: 120
        y: 230
        text: qsTr("Button")
    }

    Button {
        id: button1
        x: 120
        y: 275
        text: qsTr("Button")
    }
}
