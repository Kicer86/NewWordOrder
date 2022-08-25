
import QtQuick


ListView {
    id: listId
    anchors.fill: parent
    focus: true

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
