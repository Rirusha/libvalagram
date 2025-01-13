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
 * Returns pending join requests in a chat
 */
public class TDLib.GetChatJoinRequests : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Invite link for which to return join requests. If empty, all join
     * requests will be returned. Requires administrator privileges and
     * can_invite_users right in the chat for own links and owner privileges
     * for other links
     */
    public string invite_link { get; construct set; }

    /**
     * A query to search for in the first names, last names and usernames of
     * the users to return
     */
    public string query { get; construct set; }

    /**
     * A chat join request from which to return next requests; pass null to
     * get results from the beginning
     */
    public ChatJoinRequest offset_request { get; construct set; }

    /**
     * The maximum number of requests to join the chat to return
     */
    public int32 limit { get; construct set; }

    public GetChatJoinRequests (
        int64 chat_id,
        string invite_link,
        string query,
        ChatJoinRequest offset_request,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            invite_link: invite_link,
            query: query,
            offset_request: offset_request,
            limit: limit,
            tdlib_type: "getChatJoinRequests",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
