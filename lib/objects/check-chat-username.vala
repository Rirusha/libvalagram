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
 * Checks whether a username can be set for a chat
 */
public class TDLib.CheckChatUsername : TDObject {

    /**
     * Chat identifier; must be identifier of a supergroup chat, or a channel
     * chat, or a private chat with self, or 0 if the chat is being created
     */
    public int64 chat_id { get; construct set; }

    /**
     * Username to be checked
     */
    public string username { get; construct set; }

    public CheckChatUsername (
        int64 chat_id,
        string username
    ) {
        Object (
            chat_id: chat_id,
            username: username,
            tdlib_type: "checkChatUsername",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
