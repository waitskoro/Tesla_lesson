import QtQuick 2.0
import QtLocation 5.12
import QtPositioning 5.12

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
}
