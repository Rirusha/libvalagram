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
 * Changes order of active usernames of a supergroup or channel, requires
 * owner privileges in the supergroup or channel
 */
internal class TDLib.ReorderSupergroupActiveUsernames : TDObject {

    /**
     * Identifier of the supergroup or channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * The new order of active usernames. All currently active usernames must
     * be specified
     */
    public Gee.ArrayList<string?> usernames { get; construct set; default = new Gee.ArrayList<string?> (); }

    public ReorderSupergroupActiveUsernames (
        int64 supergroup_id,
        Gee.ArrayList<string?> usernames
    ) {
        Object (
            supergroup_id: supergroup_id,
            usernames: usernames,
            tdlib_type: "reorderSupergroupActiveUsernames",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
