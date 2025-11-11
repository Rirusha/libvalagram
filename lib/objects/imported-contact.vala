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
 * Describes a contact to import
 */
public class TDLib.ImportedContact : Error {

    /**
     * Phone number of the user
     */
    public string phone_number { get; construct set; }

    /**
     * First name of the user; 1-64 characters
     */
    public string first_name { get; construct set; }

    /**
     * Last name of the user; 0-64 characters
     */
    public string last_name { get; construct set; }

    /**
     * Note to add about the user; 0-getOption("user_note_text_length_max")
     * characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and
     * CustomEmoji entities are allowed;
     * pass null to keep the current user's note
     */
    public FormattedText note { get; construct set; }

    public ImportedContact (
        string phone_number,
        string first_name,
        string last_name,
        FormattedText note
    ) {
        Object (
            phone_number: phone_number,
            first_name: first_name,
            last_name: last_name,
            note: note,
            tdlib_type: "importedContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
