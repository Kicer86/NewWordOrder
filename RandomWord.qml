
import QtQuick


Item {

    required property var model

    Column {
        anchors.fill: parent

        Text {
            id: wordId

            font.pixelSize: 25
            font.bold: true
        }

        Text {
            id: meaningId
        }
    }

    function selectRandomWord() {
        const wordNo = Math.random() * model.count

        wordId.text = model.get(wordNo).word
        meaningId.text = model.get(wordNo).meaning
    }

    Component.onCompleted: selectRandomWord()
}
