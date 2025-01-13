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
 * Changes the order of pinned chats
 */
public class TDLib.SetPinnedChats : TDObject {

    /**
     * Chat list in which to change the order of pinned chats
     */
    public ChatList chat_list { get; construct set; }

    /**
     * The new list of pinned chats
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public SetPinnedChats (
        ChatList chat_list,
        Gee.ArrayList<int64?> chat_ids
    ) {
        Object (
            chat_list: chat_list,
            chat_ids: chat_ids,
            tdlib_type: "setPinnedChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
