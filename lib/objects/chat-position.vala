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
 * Describes a position of a chat in a chat list
 */
public class TDLib.ChatPosition : Error {

    /**
     * The chat list
     */
    public ChatList list { get; construct set; }

    /**
     * A parameter used to determine order of the chat in the chat list.
     * Chats must be sorted by the pair (order, chat.id) in descending order
     */
    public int64 order { get; construct set; }

    /**
     * True, if the chat is pinned in the chat list
     */
    public bool is_pinned { get; construct set; }

    /**
     * Source of the chat in the chat list; may be null
     */
    public ChatSource? source { get; construct set; }

    public ChatPosition (
        ChatList list,
        int64 order,
        bool is_pinned,
        ChatSource? source
    ) {
        Object (
            list: list,
            order: order,
            is_pinned: is_pinned,
            source: source,
            tdlib_type: "chatPosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
