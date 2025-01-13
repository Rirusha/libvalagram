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
 * Changes the pinned state of a chat. There can be up to
 * getOption("pinned_chat_count_max")/getOption("pinned_archived_chat_count_max")
 * pinned non-secret chats and the same number of secret chats in the
 * main/archive chat list. The limit can be increased with Telegram
 * Premium
 */
public class TDLib.ToggleChatIsPinned : TDObject {

    /**
     * Chat list in which to change the pinned state of the chat
     */
    public ChatList chat_list { get; construct set; }

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true to pin the chat; pass false to unpin it
     */
    public bool is_pinned { get; construct set; }

    public ToggleChatIsPinned (
        ChatList chat_list,
        int64 chat_id,
        bool is_pinned
    ) {
        Object (
            chat_list: chat_list,
            chat_id: chat_id,
            is_pinned: is_pinned,
            tdlib_type: "toggleChatIsPinned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
