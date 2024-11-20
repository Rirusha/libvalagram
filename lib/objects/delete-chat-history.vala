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
 * Deletes all messages in the chat. Use
 * chat.can_be_deleted_only_for_self and
 * chat.can_be_deleted_for_all_users fields to find whether and how the
 * method can be applied to the chat
 */
internal class TDLib.DeleteChatHistory : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true to remove the chat from all chat lists
     */
    public bool remove_from_chat_list { get; construct set; }

    /**
     * Pass true to delete chat history for all users
     */
    public bool revoke { get; construct set; }

    public DeleteChatHistory (
        int64 chat_id,
        bool remove_from_chat_list,
        bool revoke
    ) {
        Object (
            chat_id: chat_id,
            remove_from_chat_list: remove_from_chat_list,
            revoke: revoke,
            tdlib_type: "deleteChatHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
