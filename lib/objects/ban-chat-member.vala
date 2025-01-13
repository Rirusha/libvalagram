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
 * Bans a member in a chat; requires can_restrict_members administrator
 * right. Members can't be banned in private or secret chats. In
 * supergroups and channels, the user will not be able to return to the
 * group on their own using invite links, etc., unless unbanned first
 */
internal class TDLib.BanChatMember : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Member identifier
     */
    public MessageSender member_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user will be unbanned; 0 if
     * never. If the user is banned for more than 366 days or for less than
     * 30 seconds from the current time, the user is considered to be banned
     * forever. Ignored in basic groups and if a chat is banned
     */
    public int32 banned_until_date { get; construct set; }

    /**
     * Pass true to delete all messages in the chat for the user that is
     * being removed. Always true for supergroups and channels
     */
    public bool revoke_messages { get; construct set; }

    public BanChatMember (
        int64 chat_id,
        MessageSender member_id,
        int32 banned_until_date,
        bool revoke_messages
    ) {
        Object (
            chat_id: chat_id,
            member_id: member_id,
            banned_until_date: banned_until_date,
            revoke_messages: revoke_messages,
            tdlib_type: "banChatMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
