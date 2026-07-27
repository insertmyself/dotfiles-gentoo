import Quickshell
import QtQuick.Layouts
import QtQuick
import "."

PanelWindow {
    anchors.left: true
    implicitHeight: 748
    implicitWidth: 54
    color: "transparent"

    SystemClock {
        id: clockData
        precision: SystemClock.Minutes
    }

    Rectangle {
        anchors.fill: parent
        color: "#000000"
        border.width: 2
        border.color: "#ff0808"

        ColumnLayout {
            anchors.fill: parent
            spacing: 6

            Rectangle {
                id: musicWidget
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: 8
                Layout.preferredWidth: musicWidgetText.implicitHeight + 16
                Layout.preferredHeight: musicWidgetText.implicitWidth + 28
                color: "#353535"

                Text {
                    id: musicWidgetText
                    anchors.centerIn: parent
                    text: Shared.artistText + " - " + Shared.titleText
                    color: "#cfc38d"
                    font.weight: 900
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 18
                    transformOrigin: Item.Center
                    rotation: -90
                }
            }

            Item {
                Layout.fillHeight: true
            }

            Rectangle {
                id: clockWidget
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: clockWidgetContent.implicitWidth + 12
                Layout.preferredHeight: clockWidgetContent.implicitHeight + 12
                color: "#303030"

                Column {
                    id: clockWidgetContent
                    anchors.centerIn: parent

                    Text {
                        text: Qt.formatTime(clockData.date, "hh")
                        color: "#cfc38d"
                        font.weight: 900
                        font.family: "JetBrainsMono Nerd Font"
                        font.pixelSize: 23
                    }

                    Text {
                        text: Qt.formatTime(clockData.date, "mm")
                        color: "#cfc38d"
                        font.weight: 900
                        font.family: "JetBrainsMono Nerd Font"
                        font.pixelSize: 23
                    }
                }
            }

            Rectangle {
                id: powerWidget
                Layout.alignment: Qt.AlignHCenter
                Layout.bottomMargin: 8
                Layout.preferredWidth: powerWidgetIcon.implicitHeight + 16
                Layout.preferredHeight: powerWidgetIcon.implicitWidth + 28
                color: powerWidgetHoverHandler.hovered ? "#303030" : "#252525"

                Behavior on color {
                    ColorAnimation {
                        duration: 180
                    }
                }

                HoverHandler {
                    id: powerWidgetHoverHandler
                    cursorShape: Qt.PointingHandCursor
                }

                Text {
                    id: powerWidgetIcon
                    anchors.centerIn: parent
                    text: "⏻"
                    color: "#cfc38d"
                    font.weight: 900
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 18
                }
            }
        }
    }
}
