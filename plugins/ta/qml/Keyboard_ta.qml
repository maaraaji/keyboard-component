/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import keys 1.0

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "ஞ"; shifted: "ஞ"; extended: ["1"]; extendedShifted: ["1"]; leftSide: true; }
            CharKey { label: "ற"; shifted: "ற"; extended: ["2"]; extendedShifted: ["2"] }
            CharKey { label: "ந"; shifted: "ந"; extended: ["3"]; extendedShifted: ["3"] }
            CharKey { label: "ச"; shifted: "ச"; extended: ["4"]; extendedShifted: ["4"] }
            CharKey { label: "வ"; shifted: "வ"; extended: ["5"]; extendedShifted: ["5"] }
            CharKey { label: "ல"; shifted: "ல"; extended: ["6"]; extendedShifted: ["6"] }
            CharKey { label: "ர"; shifted: "ர"; extended: ["7"]; extendedShifted: ["7"] }
            CharKey { label: "ை"; shifted: "ஐ"; extended: ["8"]; extendedShifted: ["8"] }
            CharKey { label: "ொ"; shifted: "ோ"; extended: ["9"]; extendedShifted: ["9"] }
            CharKey { label: "ி"; shifted: "ீ"; extended: ["0"]; extendedShifted: ["0"]; }
            CharKey { label: "ு"; shifted: "ூ"; extended: ["["]; extendedShifted: ["{"]; rightSide: true; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "ய"; shifted: "ய"; leftSide: true; }
            CharKey { label: "ள"; shifted: "ள"; }
            CharKey { label: "ன"; shifted: "ன"; }
            CharKey { label: "க"; shifted: "க"; }
            CharKey { label: "ப"; shifted: "ப"; }
            CharKey { label: "ா"; shifted: "ழ"; }
            CharKey { label: "த"; shifted: "த"; }
            CharKey { label: "ம"; shifted: "ம"; }
            CharKey { label: "ட"; shifted: "ட"; }
            CharKey { label: "்"; shifted: "ஃ"; extended: [";"]; extendedShifted: [":"]; }
            CharKey { label: "ங"; shifted: "ங"; extended: ["'"]; extendedShifted: ['"']; rightSide: true; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey {}
            CharKey { label: "ண"; shifted: "ண"; }
            CharKey { label: "ஒ"; shifted: "ஓ"; }
            CharKey { label: "உ"; shifted: "ஊ"; extended: ["ç"]; extendedShifted: ["Ç"] }
            CharKey { label: "எ"; shifted: "ஏ"; }
            CharKey { label: "ெ"; shifted: "ே"; }
            CharKey { label: "ஔ"; shifted: "ௌ"; extended: ["ñ"]; extendedShifted: ["Ñ"] }
            CharKey { label: "அ"; shifted: "ஆ"; }
            CharKey { label: "இ"; shifted: "ஈ"; extended: [","]; extendedShifted: ['<']; }
            BackspaceKey {}
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight + units.gu(UI.row_margin);

            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; height: parent.height; }
            LanguageKey    { id: languageMenuButton;                     anchors.left: symShiftKey.right; height: parent.height; }
            CharKey        { id: commaKey;    label: ","; shifted: ","; extended: ["'", "\"", ";", ":", "@", "&", "(", ")"]; extendedShifted: ["'", "\"", ";", ":", "@", "&", "(", ")"]; anchors.left: languageMenuButton.right; height: parent.height; }
            SpaceKey       { id: spaceKey;                               anchors.left: commaKey.right; anchors.right: dotKey.left; noMagnifier: true; height: parent.height; }
            CharKey        { id: dotKey;      label: "."; shifted: "."; extended: ["?", "-", "_", "!", "+", "%","#","/"];  extendedShifted: ["?", "-", "_", "!", "+", "%","#","/"]; anchors.right: enterKey.left; height: parent.height; }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right; height: parent.height; }
        }
    } // column
}
