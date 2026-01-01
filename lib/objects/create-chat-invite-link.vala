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
 * Creates a new invite link for a chat. Available for basic groups,
 * supergroups, and channels. Requires administrator privileges and
 * can_invite_users right in the chat
 */
public class TDLib.CreateChatInviteLink : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Invite link name; 0-32 characters
     */
    public string name { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the link will expire; pass 0 if
     * never
     */
    public int32 expiration_date { get; construct set; }

    /**
     * The maximum number of chat members that can join the chat via the link
     * simultaneously; 0-99999; pass 0 if not limited
     */
    public int32 member_limit { get; construct set; }

    /**
     * Pass true if users joining the chat via the link need to be approved
     * by chat administrators. In this case, member_limit must be 0
     */
    public bool creates_join_request { get; construct set; }

    public CreateChatInviteLink (
        int64 chat_id,
        string name,
        int32 expiration_date,
        int32 member_limit,
        bool creates_join_request
    ) {
        Object (
            chat_id: chat_id,
            name: name,
            expiration_date: expiration_date,
            member_limit: member_limit,
            creates_join_request: creates_join_request,
            tdlib_type: "createChatInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
