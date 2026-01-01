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
 * Contains information about the current localization target
 */
public class TDLib.LocalizationTargetInfo : Error {

    /**
     * List of available language packs for this application
     */
    public Gee.ArrayList<LanguagePackInfo?> language_packs { get; construct set; default = new Gee.ArrayList<LanguagePackInfo?> (); }

    public LocalizationTargetInfo (
        Gee.ArrayList<LanguagePackInfo?> language_packs
    ) {
        Object (
            language_packs: language_packs,
            tdlib_type: "localizationTargetInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
