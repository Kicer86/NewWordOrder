
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

    AllWordsList {
        model: wordsModel
    }
}

