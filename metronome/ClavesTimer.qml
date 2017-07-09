import QtQuick 2.0

Timer {
    id: clavesTimer
    interval: cowbellTimer.interval
    triggeredOnStart: true
    running: false
    repeat: true

    property BlinkingTimer blink: BlinkingTimer{

        onTriggered: {
            statusIndicator1.active = false
            blink.stop()
        }
    }

    onTriggered: {

        if(quaver.checked == true){
            statusIndicator1.active = true
            blink.start()
            claves.play()}
    }
}

