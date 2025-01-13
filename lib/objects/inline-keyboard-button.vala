/*
 * Copyright (C) 2024-2025 Vladimir Vaskov
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
 * Represents a single button in an inline keyboard
 */
public class TDLib.InlineKeyboardButton : Error {

    /**
     * Text of the button
     */
    public string text { get; construct set; }

    /**
     * Type of the button
     */
    public InlineKeyboardButtonType type_ { get; construct set; }

    public InlineKeyboardButton (
        string text,
        InlineKeyboardButtonType type_
    ) {
        Object (
            text: text,
            type_: type_,
            tdlib_type: "inlineKeyboardButton",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
