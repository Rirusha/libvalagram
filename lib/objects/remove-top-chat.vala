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
 * Removes a chat from the list of frequently used chats. Supported only
 * if the chat info database is enabled
 */
public class TDLib.RemoveTopChat : TDObject {

    /**
     * Category of frequently used chats
     */
    public TopChatCategory category { get; construct set; }

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    public RemoveTopChat (
        TopChatCategory category,
        int64 chat_id
    ) {
        Object (
            category: category,
            chat_id: chat_id,
            tdlib_type: "removeTopChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
