import QtQuick 2.0

Timer {

    interval: cowbellTimer.interval
    triggeredOnStart: true
    running: false
    repeat: true

    property BlinkingTimer blink1: BlinkingTimer{

        onTriggered: {
            statusIndicator1.active = false
            blink1.stop()
        }
    }

    onTriggered: {

        if(quaver.checked == true){
            statusIndicator1.active = true
            blink1.start()
            claves.play()}
//        else{
//            claves.stop()
//            blink.stop()
//        }
    }
}

