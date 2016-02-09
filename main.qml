import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtWebKit  3.0


ApplicationWindow {
    visible: true
    width: 600
    height: 800
    title: qsTr("Browser")


    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        function myQmlFunction(msg){
            console.log(msg)
        }

        anchors.fill: parent     

        goURL.onClicked: gourl(textInput1.text)
        ScrollView{
            x:0
            y:39
            width: 600
            height: 763
            WebView {
                   id: webView
                   url: "www.google.ru"
                   onLoadProgressChanged: console.log("123")

               }
        }
    }
        function gourl(caption){
            webView.url=caption

        }



    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
