
import QtQuick 2.7
import QtQuick.Controls 2.3


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

    ListView {
        id: listId
        anchors.fill: parent
        focus: true
        model: wordsModel
        delegate: Rectangle {
            id: delegateId
            required property int index
            required property string word
            required property string meaning

            width: parent.width
            height: ListView.isCurrentItem ? wordSectionId.height: headerId.height
            clip: true

            border.color: "red"
            radius: 5

            Behavior on height {
                NumberAnimation {}
            }

            Column {
                id: wordSectionId

                Text {
                    id: headerId
                    text: word
                    font.bold: true

                }

                Text {
                    text: meaning
                }
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    listId.currentIndex = index;
                }
            }
        }
    }
}

