import QtQuick 2.0
import QtMultimedia 5.8

Timer {
    id: cowbellTimer
    interval: 1000
    triggeredOnStart: true
    running: false
    repeat: true

    property BlinkingTimer t2: BlinkingTimer {
        id: cowbellBlinking
    }

    onTriggered: {

        if(quarter.checked == true){
            statusIndicator.active = true
            cowbell.play()
            cowbellBlinking.start()
            delay.start()}
    }

}




