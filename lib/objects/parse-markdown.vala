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
 * Parses Markdown entities in a human-friendly format, ignoring markup
 * errors. Can be called synchronously
 */
internal class TDLib.ParseMarkdown : TDObject {

    /**
     * The text to parse. For example, "__italic__ ~~strikethrough~~
     * ||spoiler|| **bold** `code` ```pre``` __[italic__
     * text_url](telegram.org) __italic**bold italic__bold**"
     */
    public FormattedText text { get; construct set; }

    public ParseMarkdown (
        FormattedText text
    ) {
        Object (
            text: text,
            tdlib_type: "parseMarkdown",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
