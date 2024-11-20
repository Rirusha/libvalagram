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
 * Describes a user that sent a join request and waits for administrator
 * approval
 */
public class TDLib.ChatJoinRequest : Error {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user sent the join request
     */
    public int32 date { get; construct set; }

    /**
     * A short bio of the user
     */
    public string bio { get; construct set; }

    public ChatJoinRequest (
        int64 user_id,
        int32 date,
        string bio
    ) {
        Object (
            user_id: user_id,
            date: date,
            bio: bio,
            tdlib_type: "chatJoinRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
