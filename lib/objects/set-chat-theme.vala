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
 * Changes the chat theme. Supported only in private and secret chats
 */
internal class TDLib.SetChatTheme : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Name of the new chat theme; pass an empty string to return the default
     * theme
     */
    public string theme_name { get; construct set; }

    public SetChatTheme (
        int64 chat_id,
        string theme_name
    ) {
        Object (
            chat_id: chat_id,
            theme_name: theme_name,
            tdlib_type: "setChatTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
