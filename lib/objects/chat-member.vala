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
 * Describes a user or a chat as a member of another chat
 */
public class TDLib.ChatMember : Error {

    /**
     * Identifier of the chat member. Currently, other chats can be only Left
     * or Banned. Only supergroups and channels can have other chats as Left
     * or Banned members and these chats must be supergroups or channels
     */
    public MessageSender member_id { get; construct set; }

    /**
     * Identifier of a user that invited/promoted/banned this member in the
     * chat; 0 if unknown
     */
    public int64 inviter_user_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user joined/was promoted/was
     * banned in the chat
     */
    public int32 joined_chat_date { get; construct set; }

    /**
     * Status of the member in the chat
     */
    public ChatMemberStatus status { get; construct set; }

    public ChatMember (
        MessageSender member_id,
        int64 inviter_user_id,
        int32 joined_chat_date,
        ChatMemberStatus status
    ) {
        Object (
            member_id: member_id,
            inviter_user_id: inviter_user_id,
            joined_chat_date: joined_chat_date,
            status: status,
            tdlib_type: "chatMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
