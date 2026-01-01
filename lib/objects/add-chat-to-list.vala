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
 * Adds a chat to a chat list. A chat can't be simultaneously in Main and
 * Archive chat lists, so it is automatically removed from another one if
 * needed
 */
public class TDLib.AddChatToList : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The chat list. Use {@link Client.get_chat_lists_to_add_chat} to get
     * suitable chat lists
     */
    public ChatList chat_list { get; construct set; }

    public AddChatToList (
        int64 chat_id,
        ChatList chat_list
    ) {
        Object (
            chat_id: chat_id,
            chat_list: chat_list,
            tdlib_type: "addChatToList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
