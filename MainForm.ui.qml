import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: item1
    width: 640
    height: 480
    property alias progressBar1: progressBar1
    property alias textInput1: textInput1
    property alias goURL: goURL

    RowLayout {
        id: rowLayout1
        width: 600
        height: 36
        antialiasing: true
        scale: 1
        spacing: 5


        TextInput {
            id: textInput1
            x: 3
            y: 3
            width: 82
            height: 36
            text: qsTr("")
            cursorVisible: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBaseline
            Layout.fillWidth: true
            font.pixelSize: 27
        }

        Button {
            id: goURL
            x: 547
            width: 47
            text: "<<<<"
            antialiasing: true
            activeFocusOnPress: true

            clip: false
        }

    }

    ProgressBar {
        id: progressBar1
        x: 3
        y: 37
        width: 592
        height: 3
    }

}
