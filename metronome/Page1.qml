import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    currentTempo.readOnly: true

    dial.onValueChanged: {

        currentTempo.text = dial.value
    }

    start.onClicked: {

        mainTimer.start()
    }

    stop.onClicked: {

        mainTimer.stop()
    }

    Timer {
        id: mainTimer
        interval: 1000
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
