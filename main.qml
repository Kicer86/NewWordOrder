
import QtQuick
import QtQuick.Controls


ApplicationWindow {

    visible: true

    ListModel {
        id: wordsModel

        ListElement {
            word: "aaaa"
            meaning: "aaa a a aaaa"
        }
        ListElement {
            word: "bbbb"
            meaning: "bbbb b b bbb bb"
        }
        ListElement {
            word: "cccc"
            meaning: "cc c ccc cc cc"
        }
    }

    SwipeView {
        id: swipeView

        anchors.fill: parent

        RandomWord {
            model: wordsModel
        }

        AllWordsList {
            focus: true

            model: wordsModel
        }
    }

    PageIndicator {
        currentIndex: swipeView.currentIndex
        count: swipeView.count

        anchors.bottom: swipeView.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

