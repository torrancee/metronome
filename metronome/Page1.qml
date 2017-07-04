import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    slider.onValueChanged: {

        if(slider.value < 100)
            currentTempo.text = slider.value.toPrecision(2)
        else
            currentTempo.text = slider.value.toPrecision(3)

        dial.value = slider.value.toPrecision(3)
        mainTimer.interval = 60/dial.value*1000

    }

    currentTempo.readOnly: true

    dial.onValueChanged: {

        currentTempo.text = dial.value
        slider.value = dial.value
        mainTimer.interval = 60/dial.value*1000
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
