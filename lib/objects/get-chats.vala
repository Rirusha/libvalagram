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
 * Returns an ordered list of chats from the beginning of a chat list.
 * For informational purposes only. Use loadChats and updates processing
 * instead to maintain chat lists in a consistent state
 */
internal class TDLib.GetChats : TDObject {

    /**
     * The chat list in which to return chats; pass null to get chats from
     * the main chat list
     */
    public ChatList chat_list { get; construct set; }

    /**
     * The maximum number of chats to be returned
     */
    public int32 limit { get; construct set; }

    public GetChats (
        ChatList chat_list,
        int32 limit
    ) {
        Object (
            chat_list: chat_list,
            limit: limit,
            tdlib_type: "getChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
