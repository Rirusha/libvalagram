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
 * Adds, edits or deletes a string in a custom local language pack. Can
 * be called before authorization
 */
public class TDLib.SetCustomLanguagePackString : TDObject {

    /**
     * Identifier of a previously added custom local language pack in the
     * current localization target
     */
    public string language_pack_id { get; construct set; }

    /**
     * New language pack string
     */
    public LanguagePackString new_string { get; construct set; }

    public SetCustomLanguagePackString (
        string language_pack_id,
        LanguagePackString new_string
    ) {
        Object (
            language_pack_id: language_pack_id,
            new_string: new_string,
            tdlib_type: "setCustomLanguagePackString",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
