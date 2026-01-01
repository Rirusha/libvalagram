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
 * Returns an HTTP URL which can be used to automatically log in to the
 * translation platform and suggest new emoji replacements. The URL will
 * be valid for 30 seconds after generation
 */
public class TDLib.GetEmojiSuggestionsUrl : TDObject {

    /**
     * Language code for which the emoji replacements will be suggested
     */
    public string language_code { get; construct set; }

    public GetEmojiSuggestionsUrl (
        string language_code
    ) {
        Object (
            language_code: language_code,
            tdlib_type: "getEmojiSuggestionsUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
