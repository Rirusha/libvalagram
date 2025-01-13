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
 * Toggles whether all users directly joining the supergroup need to be
 * approved by supergroup administrators; requires can_restrict_members
 * administrator right
 */
public class TDLib.ToggleSupergroupJoinByRequest : TDObject {

    /**
     * Identifier of the supergroup that isn't a broadcast group
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New value of join_by_request
     */
    public bool join_by_request { get; construct set; }

    public ToggleSupergroupJoinByRequest (
        int64 supergroup_id,
        bool join_by_request
    ) {
        Object (
            supergroup_id: supergroup_id,
            join_by_request: join_by_request,
            tdlib_type: "toggleSupergroupJoinByRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
