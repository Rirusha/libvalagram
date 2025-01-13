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
 * Describes manually chosen quote from another message
 */
public class TDLib.InputTextQuote : Error {

    /**
     * Text of the quote; 0-getOption("message_reply_quote_length_max")
     * characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and
     * CustomEmoji entities are allowed to be kept and must be kept in the
     * quote
     */
    public FormattedText text { get; construct set; }

    /**
     * Quote position in the original message in UTF-16 code units
     */
    public int32 position { get; construct set; }

    public InputTextQuote (
        FormattedText text,
        int32 position
    ) {
        Object (
            text: text,
            position: position,
            tdlib_type: "inputTextQuote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
