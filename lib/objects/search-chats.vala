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
 * Searches for the specified query in the title and username of already
 * known chats; this is an offline request. Returns chats in the order
 * seen in the main chat list
 */
internal class TDLib.SearchChats : TDObject {

    /**
     * Query to search for. If the query is empty, returns up to 50 recently
     * found chats
     */
    public string query { get; construct set; }

    /**
     * The maximum number of chats to be returned
     */
    public int32 limit { get; construct set; }

    public SearchChats (
        string query,
        int32 limit
    ) {
        Object (
            query: query,
            limit: limit,
            tdlib_type: "searchChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
