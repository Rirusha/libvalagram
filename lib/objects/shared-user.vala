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
 * Contains information about a user shared with a bot
 */
public class TDLib.SharedUser : Error {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * First name of the user; for bots only
     */
    public string first_name { get; construct set; }

    /**
     * Last name of the user; for bots only
     */
    public string last_name { get; construct set; }

    /**
     * Username of the user; for bots only
     */
    public string username { get; construct set; }

    /**
     * Profile photo of the user; for bots only; may be null
     */
    public Photo? photo { get; construct set; }

    public SharedUser (
        int64 user_id,
        string first_name,
        string last_name,
        string username,
        Photo? photo
    ) {
        Object (
            user_id: user_id,
            first_name: first_name,
            last_name: last_name,
            username: username,
            photo: photo,
            tdlib_type: "sharedUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
