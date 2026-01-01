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
 * Returns a string stored in the local database from the specified
 * localization target and language pack by its key. Returns a 404 error
 * if the string is not found. Can be called synchronously
 */
public class TDLib.GetLanguagePackString : TDObject {

    /**
     * Path to the language pack database in which strings are stored
     */
    public string language_pack_database_path { get; construct set; }

    /**
     * Localization target to which the language pack belongs
     */
    public string localization_target { get; construct set; }

    /**
     * Language pack identifier
     */
    public string language_pack_id { get; construct set; }

    /**
     * Language pack key of the string to be returned
     */
    public string key { get; construct set; }

    public GetLanguagePackString (
        string language_pack_database_path,
        string localization_target,
        string language_pack_id,
        string key
    ) {
        Object (
            language_pack_database_path: language_pack_database_path,
            localization_target: localization_target,
            language_pack_id: language_pack_id,
            key: key,
            tdlib_type: "getLanguagePackString",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
