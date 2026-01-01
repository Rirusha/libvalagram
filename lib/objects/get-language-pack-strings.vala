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
 * Returns strings from a language pack in the current localization
 * target by their keys. Can be called before authorization
 */
public class TDLib.GetLanguagePackStrings : TDObject {

    /**
     * Language pack identifier of the strings to be returned
     */
    public string language_pack_id { get; construct set; }

    /**
     * Language pack keys of the strings to be returned; leave empty to
     * request all available strings
     */
    public Gee.ArrayList<string?> keys { get; construct set; default = new Gee.ArrayList<string?> (); }

    public GetLanguagePackStrings (
        string language_pack_id,
        Gee.ArrayList<string?> keys
    ) {
        Object (
            language_pack_id: language_pack_id,
            keys: keys,
            tdlib_type: "getLanguagePackStrings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
