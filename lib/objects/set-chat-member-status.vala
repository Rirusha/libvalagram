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
 * Changes the status of a chat member; requires can_invite_users member
 * right to add a chat member, can_promote_members administrator right to
 * change administrator rights of the member,
 * and can_restrict_members administrator right to change restrictions of
 * a user. This function is currently not suitable for transferring chat
 * ownership; use transferChatOwnership instead.
 * Use addChatMember or banChatMember if some additional parameters needs
 * to be passed
 */
internal class TDLib.SetChatMemberStatus : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Member identifier. Chats can be only banned and unbanned in
     * supergroups and channels
     */
    public MessageSender member_id { get; construct set; }

    /**
     * The new status of the member in the chat
     */
    public ChatMemberStatus status { get; construct set; }

    public SetChatMemberStatus (
        int64 chat_id,
        MessageSender member_id,
        ChatMemberStatus status
    ) {
        Object (
            chat_id: chat_id,
            member_id: member_id,
            status: status,
            tdlib_type: "setChatMemberStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
