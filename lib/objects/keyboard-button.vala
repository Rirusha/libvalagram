/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

// THIS FILE WAS GENERATED, DON'T MODIFY IT

/**
 * Represents a single button in a bot keyboard
 */
public class TDLib.KeyboardButton : Error {

    /**
     * Text of the button
     */
    public string text { get; construct set; }

    /**
     * Identifier of the custom emoji that must be shown on the button; 0 if
     * none
     */
    public int64 icon_custom_emoji_id { get; construct set; }

    /**
     * Style of the button
     */
    public ButtonStyle style { get; construct set; }

    /**
     * Type of the button
     */
    public KeyboardButtonType type_ { get; construct set; }

    public KeyboardButton (
        string text,
        int64 icon_custom_emoji_id,
        ButtonStyle style,
        KeyboardButtonType type_
    ) {
        Object (
            text: text,
            icon_custom_emoji_id: icon_custom_emoji_id,
            style: style,
            type_: type_,
            tdlib_type: "keyboardButton",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
