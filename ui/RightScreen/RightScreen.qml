import QtQuick 2.0
import QtLocation 5.14
import QtPositioning 5.14

Rectangle{
    id: rightScreen

    anchors{
        top: parent.top
        bottom: bottomBar.top
        right:parent.right
    }

    Plugin{
        id: mapPlugin
        name: "osm"
    }

    Map{
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(56.29, 84.57) // Tomsk
        zoomLevel: 14
    }

    width: parent.width * 2/3

    Image{
        id: icon_car
        anchors{
            left: parent.left
            top: parent.top
            margins: 20
        }
        width: parent.width / 40

        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/lock.png"
    }

    Text{
        id: datetimeText
        anchors{
            left: icon_car.right
            leftMargin: 40
            topMargin: 25
            bottom: icon_car.bottom
            top: parent.top
        }
        font.pixelSize: 12
        font.bold: true
        color: "black"
        text: "12:34"
    }
}

