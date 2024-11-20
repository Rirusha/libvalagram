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
 * Adds a new member to a chat; requires can_invite_users member right.
 * Members can't be added to private or secret chats. Returns information
 * about members that weren't added
 */
internal class TDLib.AddChatMember : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the user
     */
    public int64 user_id { get; construct set; }

    /**
     * The number of earlier messages from the chat to be forwarded to the
     * new member; up to 100. Ignored for supergroups and channels, or if the
     * added user is a bot
     */
    public int32 forward_limit { get; construct set; }

    public AddChatMember (
        int64 chat_id,
        int64 user_id,
        int32 forward_limit
    ) {
        Object (
            chat_id: chat_id,
            user_id: user_id,
            forward_limit: forward_limit,
            tdlib_type: "addChatMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
