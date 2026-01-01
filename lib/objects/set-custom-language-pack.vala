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
 * Adds or changes a custom local language pack to the current
 * localization target
 */
public class TDLib.SetCustomLanguagePack : TDObject {

    /**
     * Information about the language pack. Language pack identifier must
     * start with 'X', consist only of English letters, digits and hyphens,
     * and must not exceed 64 characters. Can be called before authorization
     */
    public LanguagePackInfo info { get; construct set; }

    /**
     * Strings of the new language pack
     */
    public Gee.ArrayList<LanguagePackString?> strings { get; construct set; default = new Gee.ArrayList<LanguagePackString?> (); }

    public SetCustomLanguagePack (
        LanguagePackInfo info,
        Gee.ArrayList<LanguagePackString?> strings
    ) {
        Object (
            info: info,
            strings: strings,
            tdlib_type: "setCustomLanguagePack",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
