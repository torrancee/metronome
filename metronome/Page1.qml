import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    start.onClicked: {

        mainTimer.start()
    }

    stop.onClicked: {

        mainTimer.stop()
    }

    Timer {
        id: mainTimer
        interval: 300
        triggeredOnStart: true
        running: false
        repeat: true

        onTriggered: {
            statusIndicator.active = true
            cowbell.play()
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

    SoundEffect{
        id: cowbell
        source: "qrc:/sound/sounds/cowbell.wav"
    }
}
