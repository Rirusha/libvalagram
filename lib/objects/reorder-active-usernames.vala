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
 * Changes order of active usernames of the current user
 */
internal class TDLib.ReorderActiveUsernames : TDObject {

    /**
     * The new order of active usernames. All currently active usernames must
     * be specified
     */
    public Gee.ArrayList<string?> usernames { get; construct set; default = new Gee.ArrayList<string?> (); }

    public ReorderActiveUsernames (
        Gee.ArrayList<string?> usernames
    ) {
        Object (
            usernames: usernames,
            tdlib_type: "reorderActiveUsernames",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
