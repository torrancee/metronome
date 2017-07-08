import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    CowbellTimer{
        id: cowbellTimer}


    //label with current tempo set to read only state
    currentTempo.readOnly: true


    slider.onValueChanged: {

        if(slider.value < 100)
            currentTempo.text = slider.value.toPrecision(2)
        else
            currentTempo.text = slider.value.toPrecision(3)

            dial.value = slider.value.toPrecision(3)
    }

    // set text label to current tempo
    // slider to same value as dial
    // interval in timers changed
    // stop clavesTimer to sync

    dial.onValueChanged: {

        currentTempo.text = dial.value
        slider.value = dial.value

        cowbellTimer.interval = 60/dial.value*1000
        delay.interval = cowbellTimer.interval/2
        clavesTimer.interval = cowbellTimer.interval

            clavesTimer.stop()
    }

    start.onClicked: {

        cowbellTimer.start()
    }

    stop.onClicked: {

        cowbellTimer.stop()
        clavesTimer.stop()
    }

    Timer {
        id: clavesTimer
        interval: cowbellTimer.interval
        triggeredOnStart: true
        running: false
        repeat: true

        onTriggered: {

            if(quaver.checked == true){
                statusIndicator1.active = true
                claves.play()
                }
            else
                clavesTimer.stop()
        }
    }

    Timer {
        id: delay
        interval: cowbellTimer.interval/2
        triggeredOnStart: false
        running: false
        repeat: false

        onTriggered: {
            clavesTimer.start()
            delay.stop()
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
        id: claves
        source: "qrc:/sound/sounds/claves.wav"
    }

    SoundEffect{
        id: cowbell
        source: "qrc:/sound/sounds/Cowbell-3.wav"
    }
}
