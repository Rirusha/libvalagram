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
 * Represents a basic group of 0-200 users (must be upgraded to a
 * supergroup to accommodate more than 200 users)
 */
public class TDLib.BasicGroup : Error {

    /**
     * Group identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Number of members in the group
     */
    public int32 member_count { get; construct set; }

    /**
     * Status of the current user in the group
     */
    public ChatMemberStatus status { get; construct set; }

    /**
     * True, if the group is active
     */
    public bool is_active { get; construct set; }

    /**
     * Identifier of the supergroup to which this group was upgraded; 0 if
     * none
     */
    public int64 upgraded_to_supergroup_id { get; construct set; }

    public BasicGroup (
        int64 id_,
        int32 member_count,
        ChatMemberStatus status,
        bool is_active,
        int64 upgraded_to_supergroup_id
    ) {
        Object (
            id_: id_,
            member_count: member_count,
            status: status,
            is_active: is_active,
            upgraded_to_supergroup_id: upgraded_to_supergroup_id,
            tdlib_type: "basicGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
