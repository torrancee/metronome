import QtQuick 2.0
import QtMultimedia 5.8

Timer {
    id: cowbellTimer
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


