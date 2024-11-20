/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji,
 * BlockQuote, ExpandableBlockQuote, Code, Pre, PreCode, TextUrl
 * and MentionName entities from a marked-up text. Can be called
 * synchronously
 */
internal class TDLib.ParseTextEntities : TDObject {

    /**
     * The text to parse
     */
    public string text { get; construct set; }

    /**
     * Text parse mode
     */
    public TextParseMode parse_mode { get; construct set; }

    public ParseTextEntities (
        string text,
        TextParseMode parse_mode
    ) {
        Object (
            text: text,
            parse_mode: parse_mode,
            tdlib_type: "parseTextEntities",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
