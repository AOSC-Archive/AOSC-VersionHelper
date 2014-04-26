/* A simple QML helper to show release version, not particularly... useful... 
 * Copyleft Jeff Bai, 2014 
 */

import QtQuick 1.1
import Qt 4.7

Item {

    id: main
    width: 750
    height: 768

    property int stage

    Rectangle {

        id: branding

        width: 256
        height: 256

        x: (parent.width - 2 * width) / 12
        y: (parent.height - 2.3 * height) / 12
//     color: "yellow"

        Image {
            id: brandingBox

            width: parent.width
            height: parent.height

            smooth: true

            source: "images/OS2.png"

            NumberAnimation {
                id: animateRotation1
                target: branding
                properties: "rotation"
                from: 0
                to: 360
                duration: 1250

                loops: Animation.Infinite
                running: true
            }
        }
    }

    Rectangle {
        id: distroName

        width: 350
        height: 72
//     color: "yellow"

        x: (parent.width - width) / 1.25
        y: (parent.height - 2.3 * height) / 8.5

        Text {
            id: dName

            text: qsTr("<b>AOSC OS2</b>")
            font.family: "Sans"
            font.pointSize: 64
            color: "Grey"
        }
    }

    Rectangle {
        id: distroVariant

        width: 700
        height: 36
//     color: "yellow"

        x: (parent.width - 0.5 * width) / 12
        y: (parent.height - height) / 2.4

        Row {
            spacing: 360
            Rectangle {
                id: variantHead

                width: 60
                height: 24

                Text {
                    id: variantCol1

                    text: qsTr("<b>Variant:</b>")
                    font.family: "Sans"
                    font.pointSize: 20
                }
            }

            Rectangle {
                id: variantContent

                width: 64
                height: 24

                Text {
                    id: variantCol2

                    text: qsTr("AnthonOS")
                    font.family: "Sans"
                    font.pointSize: 20
                }
            }
        }
    }

    Rectangle {
        id: distroVersion

        width: 700
        height: 36
//     color: "yellow"

        x: (parent.width - 0.5 * width) / 12
        y: (parent.height - height) / 2.05

        Row {
            spacing: 360
            Rectangle {
                id: versionHead

                width: 60
                height: 24

                Text {
                    id: versionCol1

                    text: qsTr("<b>Version:</b>")
                    font.family: "Sans"
                    font.pointSize: 20
                }
            }

            Rectangle {
                id: versionContent

                width: 64
                height: 24

                Text {
                    id: versionCol2

                    text: qsTr("Beta 4 (May)")
                    font.family: "Sans"
                    font.pointSize: 20
                }
            }
        }
    }

    Rectangle {
        id: distroCodename

        width: 700
        height: 36
//     color: "yellow"

        x: (parent.width - 0.5 * width) / 12
        y: (parent.height - height) / 1.8

        Row {
            spacing: 360
            Rectangle {
                id: codenameHead

                width: 60
                height: 24

                Text {
                    id: codenameCol1

                    text: qsTr("<b>Codename:</b>")
                    font.family: "Sans"
                    font.pointSize: 20
                }
            }

            Rectangle {
                id: codenameContent

                width: 64
                height: 24

                Text {
                    id: codenameCol2

                    text: qsTr("Schrödinger Equation")
                    font.family: "Sans"
                    font.pointSize: 20
                }
            }
        }
    }

    Rectangle {
        id: distroInfo

        width: 700
        height: 36
//     color: "yellow"

        x: (parent.width - 0.5 * width) / 12
        y: (parent.height - height) / 1.5

        property string text

        text: qsTr("AOSC OS2, a Linux distribution maintained by <b>AOSC (Anthon Open Source Community)</b>.<p>AOSC OS2 is built independently with Linux From Scratch and Beyond Linux From Scratch as general guideline in the very early stage of development, along with some studying on several other distributions like Debian GNU/Linux and Fedora.</p><p><b>License Info:</b> Single builds of distribution based on AOSC OS2 will be licensed under LGPLv2.1 (Lesser GNU General License, version 2.1), if built without any non-free firmware, the license can be negotiated to be GPLv2 (GNU General Public License, version 2), other rights are reserved to the active builder; The blue circular logo of AOSC OS2 project is licensed under Apache General License 2.0, the original author is Jeff Bai (or Mingcong Bai).")

        Text {
            id: text_field
            anchors.top: parent.top
            anchors.left: parent.left

            height: parent.height
            width: parent.width

            text: parent.text
            font.family: "Sans"
            font.pointSize: 12

            wrapMode: Text.Wrap
        }

        Component.onCompleted: {
            if (text_field.paintedWidth > 680) {
                 width = 680
             } else {
                 width = text_field.paintedWidth
             }
        }
    }
}

