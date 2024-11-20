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
 * Contains information about a chat shared with a bot
 */
public class TDLib.SharedChat : Error {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Title of the chat; for bots only
     */
    public string title { get; construct set; }

    /**
     * Username of the chat; for bots only
     */
    public string username { get; construct set; }

    /**
     * Photo of the chat; for bots only; may be null
     */
    public Photo? photo { get; construct set; }

    public SharedChat (
        int64 chat_id,
        string title,
        string username,
        Photo? photo
    ) {
        Object (
            chat_id: chat_id,
            title: title,
            username: username,
            photo: photo,
            tdlib_type: "sharedChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
