/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Searches specified query by word prefixes in the provided strings.
 * Returns 0-based positions of strings that matched. Can be called
 * synchronously
 */
internal class TDLib.SearchStringsByPrefix : TDObject {

    /**
     * The strings to search in for the query
     */
    public Gee.ArrayList<string?> strings { get; construct set; default = new Gee.ArrayList<string?> (); }

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    /**
     * The maximum number of objects to return
     */
    public int32 limit { get; construct set; }

    /**
     * Pass true to receive no results for an empty query
     */
    public bool return_none_for_empty_query { get; construct set; }

    public SearchStringsByPrefix (
        Gee.ArrayList<string?> strings,
        string query,
        int32 limit,
        bool return_none_for_empty_query
    ) {
        Object (
            strings: strings,
            query: query,
            limit: limit,
            return_none_for_empty_query: return_none_for_empty_query,
            tdlib_type: "searchStringsByPrefix",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
