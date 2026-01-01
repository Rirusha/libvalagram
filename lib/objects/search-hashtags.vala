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
 * Searches for recently used hashtags by their prefix
 */
public class TDLib.SearchHashtags : TDObject {

    /**
     * Hashtag prefix to search for
     */
    public string prefix { get; construct set; }

    /**
     * The maximum number of hashtags to be returned
     */
    public int32 limit { get; construct set; }

    public SearchHashtags (
        string prefix,
        int32 limit
    ) {
        Object (
            prefix: prefix,
            limit: limit,
            tdlib_type: "searchHashtags",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
