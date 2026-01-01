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
 * Contains information about a language pack
 */
public class TDLib.LanguagePackInfo : Error {

    /**
     * Unique language pack identifier
     */
    public string id_ { get; construct set; }

    /**
     * Identifier of a base language pack; may be empty. If a string is
     * missed in the language pack, then it must be fetched from base
     * language pack. Unsupported in custom language packs
     */
    public string base_language_pack_id { get; construct set; }

    /**
     * Language name
     */
    public string name { get; construct set; }

    /**
     * Name of the language in that language
     */
    public string native_name { get; construct set; }

    /**
     * A language code to be used to apply plural forms. See
     * [[https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html]]
     * for more information
     */
    public string plural_code { get; construct set; }

    /**
     * True, if the language pack is official
     */
    public bool is_official { get; construct set; }

    /**
     * True, if the language pack strings are RTL
     */
    public bool is_rtl { get; construct set; }

    /**
     * True, if the language pack is a beta language pack
     */
    public bool is_beta { get; construct set; }

    /**
     * True, if the language pack is installed by the current user
     */
    public bool is_installed { get; construct set; }

    /**
     * Total number of non-deleted strings from the language pack
     */
    public int32 total_string_count { get; construct set; }

    /**
     * Total number of translated strings from the language pack
     */
    public int32 translated_string_count { get; construct set; }

    /**
     * Total number of non-deleted strings from the language pack available
     * locally
     */
    public int32 local_string_count { get; construct set; }

    /**
     * Link to language translation interface; empty for custom local
     * language packs
     */
    public string translation_url { get; construct set; }

    public LanguagePackInfo (
        string id_,
        string base_language_pack_id,
        string name,
        string native_name,
        string plural_code,
        bool is_official,
        bool is_rtl,
        bool is_beta,
        bool is_installed,
        int32 total_string_count,
        int32 translated_string_count,
        int32 local_string_count,
        string translation_url
    ) {
        Object (
            id_: id_,
            base_language_pack_id: base_language_pack_id,
            name: name,
            native_name: native_name,
            plural_code: plural_code,
            is_official: is_official,
            is_rtl: is_rtl,
            is_beta: is_beta,
            is_installed: is_installed,
            total_string_count: total_string_count,
            translated_string_count: translated_string_count,
            local_string_count: local_string_count,
            translation_url: translation_url,
            tdlib_type: "languagePackInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
