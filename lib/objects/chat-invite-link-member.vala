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
 * Describes a chat member joined a chat via an invite link
 */
public class TDLib.ChatInviteLinkMember : Error {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user joined the chat
     */
    public int32 joined_chat_date { get; construct set; }

    /**
     * True, if the user has joined the chat using an invite link for a chat
     * folder
     */
    public bool via_chat_folder_invite_link { get; construct set; }

    /**
     * User identifier of the chat administrator, approved user join request
     */
    public int64 approver_user_id { get; construct set; }

    public ChatInviteLinkMember (
        int64 user_id,
        int32 joined_chat_date,
        bool via_chat_folder_invite_link,
        int64 approver_user_id
    ) {
        Object (
            user_id: user_id,
            joined_chat_date: joined_chat_date,
            via_chat_folder_invite_link: via_chat_folder_invite_link,
            approver_user_id: approver_user_id,
            tdlib_type: "chatInviteLinkMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
