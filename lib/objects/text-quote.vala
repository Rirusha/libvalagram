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
 * Describes manually or automatically chosen quote from another message
 */
public class TDLib.TextQuote : Error {

    /**
     * Text of the quote. Only Bold, Italic, Underline, Strikethrough,
     * Spoiler, and CustomEmoji entities can be present in the text
     */
    public FormattedText text { get; construct set; }

    /**
     * Approximate quote position in the original message in UTF-16 code
     * units as specified by the message sender
     */
    public int32 position { get; construct set; }

    /**
     * True, if the quote was manually chosen by the message sender
     */
    public bool is_manual { get; construct set; }

    public TextQuote (
        FormattedText text,
        int32 position,
        bool is_manual
    ) {
        Object (
            text: text,
            position: position,
            is_manual: is_manual,
            tdlib_type: "textQuote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
