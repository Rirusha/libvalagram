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
 * Adds a chat to the list of recently found chats. The chat is added to
 * the beginning of the list. If the chat is already in the list, it will
 * be removed from the list first
 */
internal class TDLib.AddRecentlyFoundChat : TDObject {

    /**
     * Identifier of the chat to add
     */
    public int64 chat_id { get; construct set; }

    public AddRecentlyFoundChat (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "addRecentlyFoundChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
