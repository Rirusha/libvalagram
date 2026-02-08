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
 * Describes a connection of the bot with a business account
 */
public class TDLib.BusinessConnection : Error {

    /**
     * Unique identifier of the connection
     */
    public string id_ { get; construct set; }

    /**
     * Identifier of the business user who created the connection
     */
    public int64 user_id { get; construct set; }

    /**
     * Chat identifier of the private chat with the user
     */
    public int64 user_chat_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the connection was established
     */
    public int32 date { get; construct set; }

    /**
     * Rights of the bot; may be null if the connection was disabled
     */
    public BusinessBotRights? rights { get; construct set; }

    /**
     * True, if the connection is enabled; false otherwise
     */
    public bool is_enabled { get; construct set; }

    public BusinessConnection (
        string id_,
        int64 user_id,
        int64 user_chat_id,
        int32 date,
        BusinessBotRights? rights,
        bool is_enabled
    ) {
        Object (
            id_: id_,
            user_id: user_id,
            user_chat_id: user_chat_id,
            date: date,
            rights: rights,
            is_enabled: is_enabled,
            tdlib_type: "businessConnection",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
