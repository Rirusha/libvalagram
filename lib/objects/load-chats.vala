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
 * Loads more chats from a chat list. The loaded chats and their
 * positions in the chat list will be sent through updates. Chats are
 * sorted by the pair (chat.position.order, chat.id) in descending order.
 * Returns a 404 error if all chats have been loaded
 */
internal class TDLib.LoadChats : TDObject {

    /**
     * The chat list in which to load chats; pass null to load chats from the
     * main chat list
     */
    public ChatList chat_list { get; construct set; }

    /**
     * The maximum number of chats to be loaded. For optimal performance, the
     * number of loaded chats is chosen by TDLib and can be smaller than the
     * specified limit, even if the end of the list is not reached
     */
    public int32 limit { get; construct set; }

    public LoadChats (
        ChatList chat_list,
        int32 limit
    ) {
        Object (
            chat_list: chat_list,
            limit: limit,
            tdlib_type: "loadChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
