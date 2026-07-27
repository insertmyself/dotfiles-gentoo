import Quickshell
import QtQuick
import Quickshell.Io
import "."

Scope {
    Bar {}

    Process {
        id: playerProc
        property string result: ""

        command: ["bash", "-c", "playerctl -p spotify metadata --format '{{ title }}|{{ artist }}' --follow"]
        running: true
        stdout: SplitParser {
            onRead: data => {
                const parts = data.trim().split("|");

                Shared.titleText = parts[0] || "No Artist";
                Shared.artistText = parts[1] || "No Artist";
            }
        }
    }
}
