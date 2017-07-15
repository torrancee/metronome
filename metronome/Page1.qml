import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    //label with current tempo set to read only state
    currentTempo.readOnly: true

    CowbellTimer{
        id: cowbellTimer}

    ClavesTimer{
        id: clavesTimer}

    start.onClicked: {

        cowbellTimer.start()
    }

    stop.onClicked: {

        cowbellTimer.stop()
        clavesTimer.stop()
//        clavesTimer2.stop()
    }


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

        //clavesTimer.stop()
        //clavesTimer2.stop()

        currentTempo.text = dial.value
        slider.value = dial.value

        cowbellTimer.interval = 60/dial.value*1000

        cowbellTimer.delay.interval = cowbellTimer.interval/2
        //cowbellTimer.delay2.interval = cowbellTimer.interval/4

        clavesTimer.interval = cowbellTimer.interval
        //clavesTimer2.interval = cowbellTimer.interval/2

        //cowbellTimer.stop()
        claves.stop()


    }

    SoundEffect{
        id: claves
        source: "qrc:/sound/sounds/claves.wav"
    }

//    SoundEffect{
//        id: claves2
//        source: "qrc:/sound/sounds/claves.wav"
//    }

    SoundEffect{
        id: cowbell
        source: "qrc:/sound/sounds/Cowbell-3.wav"
    }
}
