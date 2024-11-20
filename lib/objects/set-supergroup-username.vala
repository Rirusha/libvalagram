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
 * Changes the editable username of a supergroup or channel, requires
 * owner privileges in the supergroup or channel
 */
internal class TDLib.SetSupergroupUsername : TDObject {

    /**
     * Identifier of the supergroup or channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New value of the username. Use an empty string to remove the username.
     * The username can't be completely removed if there is another active or
     * disabled username
     */
    public string username { get; construct set; }

    public SetSupergroupUsername (
        int64 supergroup_id,
        string username
    ) {
        Object (
            supergroup_id: supergroup_id,
            username: username,
            tdlib_type: "setSupergroupUsername",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
