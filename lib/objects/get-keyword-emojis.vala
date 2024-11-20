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
 * Return emojis matching the keyword. Supported only if the file
 * database is enabled. Order of results is unspecified
 */
internal class TDLib.GetKeywordEmojis : TDObject {

    /**
     * Text to search for
     */
    public string text { get; construct set; }

    /**
     * List of possible IETF language tags of the user's input language; may
     * be empty if unknown
     */
    public Gee.ArrayList<string?> input_language_codes { get; construct set; default = new Gee.ArrayList<string?> (); }

    public GetKeywordEmojis (
        string text,
        Gee.ArrayList<string?> input_language_codes
    ) {
        Object (
            text: text,
            input_language_codes: input_language_codes,
            tdlib_type: "getKeywordEmojis",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
