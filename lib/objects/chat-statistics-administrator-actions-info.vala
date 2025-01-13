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
 * Contains statistics about administrator actions done by a user
 */
public class TDLib.ChatStatisticsAdministratorActionsInfo : Error {

    /**
     * Administrator user identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Number of messages deleted by the administrator
     */
    public int32 deleted_message_count { get; construct set; }

    /**
     * Number of users banned by the administrator
     */
    public int32 banned_user_count { get; construct set; }

    /**
     * Number of users restricted by the administrator
     */
    public int32 restricted_user_count { get; construct set; }

    public ChatStatisticsAdministratorActionsInfo (
        int64 user_id,
        int32 deleted_message_count,
        int32 banned_user_count,
        int32 restricted_user_count
    ) {
        Object (
            user_id: user_id,
            deleted_message_count: deleted_message_count,
            banned_user_count: banned_user_count,
            restricted_user_count: restricted_user_count,
            tdlib_type: "chatStatisticsAdministratorActionsInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
