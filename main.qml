import QtQuick 2.14
import QtQuick.Window 2.14
import "ui/BottomBar" 1.0
import "ui/RightScreen" 1.0
import "ui/LeftScreen" 1.0


Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Hello World")

    RightScreen{
        id: rightScreen
    }

    LeftScreen{
        id: leftScreen
    }

    BottomBar{
        id: bottomBar
    }



}
