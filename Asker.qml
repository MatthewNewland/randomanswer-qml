import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3

Item {
    ColumnLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        spacing: 12

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "What's your question?"
            font.pointSize: 14
        }

        TextField {
            id: questionField
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 12
            Layout.preferredWidth: parent.width
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Give some possible answers"
            font.pointSize: 14
        }

        Text {
            text: "\nLeave some blank if you don't need all the spaces"
            + "\nLeave all blank to get \"Yes\" or \"No\"."
            font.pointSize: 12
        }

        Text {
            text: "1:"
            font.pointSize: 14
            anchors.right: answer1.left
        }

        TextField {
            id: answer1
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 12
            Layout.preferredWidth: parent.width
        } 

        Text {
            text: "2:"
            font.pointSize: 14
            anchors.right: answer2.left
        }

        TextField {
            id: answer2
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 12
            Layout.preferredWidth: parent.width
        }

        Text {
            text: "3:"
            font.pointSize: 14
            anchors.right: answer3.left
        }

        TextField {
            id: answer3
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 12
            Layout.preferredWidth: parent.width
        }
    }

    property var questionField: questionField
    property var answer1: answer1
    property var answer2: answer2
    property var answer3: answer3
}

            
