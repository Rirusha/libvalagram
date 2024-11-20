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
 * Changes the discussion group of a channel chat; requires
 * can_change_info administrator right in the channel if it is specified
 */
internal class TDLib.SetChatDiscussionGroup : TDObject {

    /**
     * Identifier of the channel chat. Pass 0 to remove a link from the
     * supergroup passed in the second argument to a linked channel chat
     * (requires can_pin_messages member right in the supergroup)
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of a new channel's discussion group. Use 0 to remove the
     * discussion group. Use the method getSuitableDiscussionChats to find
     * all suitable groups.
     * Basic group chats must be first upgraded to supergroup chats. If new
     * chat members don't have access to old messages in the supergroup, then
     * toggleSupergroupIsAllHistoryAvailable must be used first to change
     * that
     */
    public int64 discussion_chat_id { get; construct set; }

    public SetChatDiscussionGroup (
        int64 chat_id,
        int64 discussion_chat_id
    ) {
        Object (
            chat_id: chat_id,
            discussion_chat_id: discussion_chat_id,
            tdlib_type: "setChatDiscussionGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
