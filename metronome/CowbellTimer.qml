import QtQuick 2.0
import QtMultimedia 5.8

Timer {

    id: cowbellTimer
    interval: 1000
    triggeredOnStart: true
    running: false
    repeat: true

    property BlinkingTimer blink: BlinkingTimer {

        onTriggered:{
                statusIndicator.active = false
                blink.stop()
        }
    }

    property Delay delay: Delay {
        interval: cowbellTimer.interval/2

        onTriggered: {
            clavesTimer.start()
            delay.stop()
         }
    }

//    property Delay delay2: Delay {
//        interval: cowbellTimer.interval/4

//        onTriggered: {
//            clavesTimer2.start()
//            delay2.stop()
//         }
//    }

    onTriggered: {

        if(quarter.checked == true){
            statusIndicator.active = true
            cowbell.play()
            blink.start()
            delay.start()
            //delay2.start()
        }
    }

}




