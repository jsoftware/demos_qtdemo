import QtQuick 2.0
import com.jsoftware.qtide.qmljengine 1.0

Rectangle {
    id: root

    Rectangle {
        property int d: 100
        id: square
        width: d
        height: d
        anchors.centerIn: parent
        color: "red"
        NumberAnimation on rotation { from: 0; to: 360; duration: 2000; loops: Animation.Infinite; }
    }

    Text {
        anchors.centerIn: parent
        text: QmlJE.dors("|.JVERSION")
    }
}
