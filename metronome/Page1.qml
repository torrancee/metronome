import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    currentTempo.readOnly: true

    slider.onValueChanged: {

        if(slider.value < 100)
            currentTempo.text = slider.value.toPrecision(2)
        else
            currentTempo.text = slider.value.toPrecision(3)

        dial.value = slider.value.toPrecision(3)
        mainTimer.interval = 60/dial.value*1000

    }

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

            if(quarter.checked == true){
                statusIndicator.active = true
                cowbell.play()
                blinkingTimer.start()
                delay.start()}
        }
    }

    Timer {
        id: clavesTimer
        interval: mainTimer.interval
        triggeredOnStart: true
        running: false
        repeat: true

        onTriggered: {

            if(quaver.checked == true){
                statusIndicator1.active = true
                claves.play()
                }
        }
    }

    Timer {
        id: delay
        interval: mainTimer.interval/2
        triggeredOnStart: false
        running: false
        repeat: false

        onTriggered: {
            clavesTimer.start()
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
        source: "qrc:/sound/sounds/Cowbell-3.wav"
    }

    SoundEffect{
        id: claves
        source: "qrc:/sound/sounds/claves.wav"
    }
}
