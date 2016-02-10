import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtWebView 1.0
import QtQuick.Layouts 1.2

ApplicationWindow {
    visible: true
    width: 1080
    height: 1920
    title: qsTr("Browser")

    Item {
        id: rootItem
        anchors.fill: parent


        RowLayout {
            id: rowLayout1
            width: 1080
            height: 36
            antialiasing: true
            scale: 1
            spacing: 5


            TextInput {
                id: textInput1
                  x: 3
                  y: 3
                  width:1080
                  height: 36
                  text: qsTr("")
                  cursorVisible: true
                  Layout.alignment: Qt.AlignHCenter | Qt.AlignBaseline
                  Layout.fillWidth: true
                  font.pixelSize: 50
            }


            Button {
                id: goURL
                x: 547
               width: 47
               text: "<<<<"
               antialiasing: true
               activeFocusOnPress: true
               clip: false
               onClicked:{
                   gourl("http://"+textInput1.text)
                   webView.runJavaScript("document.lastModified", function(result) { text.text="last modified: "+result; });
                    }

        }


}
        ProgressBar {
            id: progressBar1
            x: 3
            y:130
            width: 1080
            height: 3
            minimumValue:0
            maximumValue:100
        }
        Text{
              id: text
              x:0
              y:140
              width:1080
              height:60
              font.pixelSize:50

          }

        ScrollView{
                WebView {
                       x:0
                       y:200
                       width: 1080
                       height: 1720
                       id: webView
                       url: "http://www.google.ru"
                       onLoadProgressChanged: progress(webView.loadProgress)

                   }

                }

             }
         function progress(caption){
        progressBar1.value = caption
        console.log(caption)
    }
        function gourl(caption){
            console.log(caption)
            webView.url=caption
        }


}

