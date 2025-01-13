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
 * A text with some entities
 */
public class TDLib.FormattedText : Error {

    /**
     * The text
     */
    public string text { get; construct set; }

    /**
     * Entities contained in the text. Entities can be nested, but must not
     * mutually intersect with each other.
     * Pre, Code and PreCode entities can't contain other entities.
     * BlockQuote entities can't contain other BlockQuote entities. Bold,
     * Italic, Underline, Strikethrough, and Spoiler entities can contain and
     * can be part of any other entities. All other entities can't contain
     * each other
     */
    public Gee.ArrayList<TextEntity?> entities { get; construct set; default = new Gee.ArrayList<TextEntity?> (); }

    public FormattedText (
        string text,
        Gee.ArrayList<TextEntity?> entities
    ) {
        Object (
            text: text,
            entities: entities,
            tdlib_type: "formattedText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
