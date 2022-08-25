
import QtQuick
import QtQuick.Controls


ApplicationWindow {

    visible: true

    JSONListModel {
        id: wordsModel
        json: '[ \
           {"word": "aaa", "meaning": "aa a a a a a"}, \
           {"word": "bbb", "meaning": "bb bb bb b  nbbbb"}, \
           {"word": "ccc", "meaning": "cc c  c ccc c c"}, \
           {"word": "ddd", "meaning": "dddd d d dd ddd dddd"} \
       ]'
    }

    SwipeView {
        id: swipeView

        anchors.fill: parent

        RandomWord {
            model: wordsModel.model
        }

        AllWordsList {
            focus: true

            model: wordsModel.model
        }
    }

    PageIndicator {
        currentIndex: swipeView.currentIndex
        count: swipeView.count

        anchors.bottom: swipeView.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

