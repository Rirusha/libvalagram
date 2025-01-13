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
 * Describes the way the text needs to be parsed for text entities
 */
public abstract class TDLib.TextParseMode : Error {}

/**
 * The text uses Markdown-style formatting
 */
public class TDLib.TextParseModeMarkdown : TextParseMode {

    /**
     * Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse
     * mode, 2 - Telegram Bot API "MarkdownV2" parse mode
     */
    public int32 version { get; construct set; }

    public TextParseModeMarkdown (
        int32 version
    ) {
        Object (
            version: version,
            tdlib_type: "textParseModeMarkdown",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The text uses HTML-style formatting. The same as Telegram Bot API
 * "HTML" parse mode
 */
public class TDLib.TextParseModeHTML : TextParseMode {

    public TextParseModeHTML () {
        Object (
            tdlib_type: "textParseModeHTML",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
