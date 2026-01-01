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
 * Contains statistics about number of new members invited by a user
 */
public class TDLib.ChatStatisticsInviterInfo : Error {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Number of new members invited by the user
     */
    public int32 added_member_count { get; construct set; }

    public ChatStatisticsInviterInfo (
        int64 user_id,
        int32 added_member_count
    ) {
        Object (
            user_id: user_id,
            added_member_count: added_member_count,
            tdlib_type: "chatStatisticsInviterInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
