import QtQuick 2.0

Timer {
    id: clavesTimer
    interval: cowbellTimer.interval
    triggeredOnStart: true
    running: false
    repeat: true

    onTriggered: {

        if(quaver.checked == true){
            statusIndicator1.active = true
            claves.play()}
        else
            clavesTimer.stop()
    }
}

