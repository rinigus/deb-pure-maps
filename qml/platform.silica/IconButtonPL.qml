/* -*- coding: utf-8-unix -*-
 *
 * Copyright (C) 2018-2019 Rinigus
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    id: item
    height: image.icon.height*(1 + padding)
    width: image.icon.width*(1 + padding)

    property bool   iconColorize: true // for compatibility, not used
    property int    iconHeight: 0
    property string iconName
    property real   iconOpacity: 1.0
    property alias  iconRotation: image.rotation
    property string iconSource
    property int    iconWidth: 0
    property real   padding: 0.2

    signal clicked

    Rectangle {
        color: "transparent"
        anchors.fill: parent

        MouseArea {
            anchors.fill: parent
            onClicked: item.clicked()

            IconButton {
                id: image
                anchors.centerIn: parent
                down: pressed || parent.pressed
                icon.opacity: iconOpacity
                icon.source: iconName || iconSource
                icon.sourceSize.height: iconHeight
                icon.sourceSize.width: iconWidth
                onClicked: item.clicked()
            }
        }
    }
}
