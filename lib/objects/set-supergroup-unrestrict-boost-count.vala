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
 * Changes the number of times the supergroup must be boosted by a user
 * to ignore slow mode and chat permission restrictions; requires
 * can_restrict_members administrator right
 */
internal class TDLib.SetSupergroupUnrestrictBoostCount : TDObject {

    /**
     * Identifier of the supergroup
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New value of the unrestrict_boost_count supergroup setting; 0-8. Use 0
     * to remove the setting
     */
    public int32 unrestrict_boost_count { get; construct set; }

    public SetSupergroupUnrestrictBoostCount (
        int64 supergroup_id,
        int32 unrestrict_boost_count
    ) {
        Object (
            supergroup_id: supergroup_id,
            unrestrict_boost_count: unrestrict_boost_count,
            tdlib_type: "setSupergroupUnrestrictBoostCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
