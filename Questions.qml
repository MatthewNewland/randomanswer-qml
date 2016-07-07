import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Window 2.0
import QtQuick.Layouts 1.2

ApplicationWindow {
    title: "Random Answer"
    visible: true
    id: mainWindow
    width: 450
    height: 600
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2 

    StackView {
        id: stack
        initialItem: asker
        anchors.fill: parent

        focus: true
        states: [
            State {
                name: "showingAnswer"

                PropertyChanges {
                    target: button
                    text: "Go Back"
                }

                PropertyChanges {
                    target: result
                    visible: true
                }
            }
        ]

        Asker {
            id: asker
        }

        Item {
            id: resultWrapper
            Text {
                anchors.centerIn: parent
                id: result
                visible: false
                font.pointSize: 25
            }
        }
    }


    Button {
        id: button
        text: "Get an answer!"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: {
            if (stack.state === "") {
                var answers = [
                    asker.answer1.text,
                    asker.answer2.text,
                    asker.answer3.text].filter(function (v) {
                        return v != "";
                    });
                if (answers.length === 0) {
                    answers = ["Yes", "No"];
                }
                var numberOfChoice = Math.floor(Math.random() * answers.length);
                var choice = answers[numberOfChoice];
                result.text = choice;
                stack.push(resultWrapper);
                stack.state = "showingAnswer";
            } else {
                stack.pop();
                stack.state = "";
            }
        }
    }
}
