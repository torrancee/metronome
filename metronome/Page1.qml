import QtQuick 2.7

Page1Form {

    Timer {
        id: mainTimer
        interval: 1000
        triggeredOnStart: true
        running: true
        repeat: true

        onTriggered: {
            statusIndicator.active = true
            blinkingTimer.start()
        }
    }

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
}
