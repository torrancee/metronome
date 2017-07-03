import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Extras 1.4

Item {
    width: 300
    height: 400
    property alias statusIndicator: statusIndicator

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

    StatusIndicator {
        id: statusIndicator
        x: 68
        y: 48
        width: 164
        height: 105
    }
}
