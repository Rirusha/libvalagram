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
 * Returns information about members or banned users in a supergroup or
 * channel. Can be used only if supergroupFullInfo.can_get_members ==
 * true; additionally, administrator privileges may be required for some
 * filters
 */
internal class TDLib.GetSupergroupMembers : TDObject {

    /**
     * Identifier of the supergroup or channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * The type of users to return; pass null to use
     * supergroupMembersFilterRecent
     */
    public SupergroupMembersFilter filter { get; construct set; }

    /**
     * Number of users to skip
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of users to be returned; up to 200
     */
    public int32 limit { get; construct set; }

    public GetSupergroupMembers (
        int64 supergroup_id,
        SupergroupMembersFilter filter,
        int32 offset,
        int32 limit
    ) {
        Object (
            supergroup_id: supergroup_id,
            filter: filter,
            offset: offset,
            limit: limit,
            tdlib_type: "getSupergroupMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
