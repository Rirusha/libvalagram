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
 * Searches public chats by looking for specified query in their username
 * and title. Currently, only private chats, supergroups and channels can
 * be public. Returns a meaningful number of results.
 * Excludes private chats with contacts and chats from the chat list from
 * the results
 */
public class TDLib.SearchPublicChats : TDObject {

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    public SearchPublicChats (
        string query
    ) {
        Object (
            query: query,
            tdlib_type: "searchPublicChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
