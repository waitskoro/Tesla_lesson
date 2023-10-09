import QtQuick 2.0

Rectangle{
    id: leftScreen
    anchors{
        left: parent.left
        right: rightScreen.left
        bottom: bottomBar.top
        top: parent.top
    }

    color: "white"

    Image{
        id: car
        anchors.centerIn: parent
        width: parent.width * 0.75
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/car.png"
    }
}
