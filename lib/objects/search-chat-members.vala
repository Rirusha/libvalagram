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
 * Searches for a specified query in the first name, last name and
 * usernames of the members of a specified chat. Requires administrator
 * rights if the chat is a channel
 */
internal class TDLib.SearchChatMembers : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    /**
     * The maximum number of users to be returned; up to 200
     */
    public int32 limit { get; construct set; }

    /**
     * The type of users to search for; pass null to search among all chat
     * members
     */
    public ChatMembersFilter filter { get; construct set; }

    public SearchChatMembers (
        int64 chat_id,
        string query,
        int32 limit,
        ChatMembersFilter filter
    ) {
        Object (
            chat_id: chat_id,
            query: query,
            limit: limit,
            filter: filter,
            tdlib_type: "searchChatMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
