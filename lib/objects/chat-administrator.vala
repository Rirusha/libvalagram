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
 * Contains information about a chat administrator
 */
public class TDLib.ChatAdministrator : Error {

    /**
     * User identifier of the administrator
     */
    public int64 user_id { get; construct set; }

    /**
     * Custom title of the administrator
     */
    public string custom_title { get; construct set; }

    /**
     * True, if the user is the owner of the chat
     */
    public bool is_owner { get; construct set; }

    public ChatAdministrator (
        int64 user_id,
        string custom_title,
        bool is_owner
    ) {
        Object (
            user_id: user_id,
            custom_title: custom_title,
            is_owner: is_owner,
            tdlib_type: "chatAdministrator",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
