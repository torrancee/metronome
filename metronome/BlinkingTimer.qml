import QtQuick 2.0

Timer {

    id: blinkingTimer
    interval: 50
    triggeredOnStart: false
    running: false

    onTriggered:{
            statusIndicator.active = false
            blinkingTimer.stop()
    }
}

