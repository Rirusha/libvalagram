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
 * Returns recently searched for hashtags or cashtags by their prefix
 */
public class TDLib.GetSearchedForTags : TDObject {

    /**
     * Prefix of hashtags or cashtags to return
     */
    public string tag_prefix { get; construct set; }

    /**
     * The maximum number of items to be returned
     */
    public int32 limit { get; construct set; }

    public GetSearchedForTags (
        string tag_prefix,
        int32 limit
    ) {
        Object (
            tag_prefix: tag_prefix,
            limit: limit,
            tdlib_type: "getSearchedForTags",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
