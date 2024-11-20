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
 * Searches for the specified query in the first names, last names and
 * usernames of the known user contacts
 */
internal class TDLib.SearchContacts : TDObject {

    /**
     * Query to search for; may be empty to return all contacts
     */
    public string query { get; construct set; }

    /**
     * The maximum number of users to be returned
     */
    public int32 limit { get; construct set; }

    public SearchContacts (
        string query,
        int32 limit
    ) {
        Object (
            query: query,
            limit: limit,
            tdlib_type: "searchContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
