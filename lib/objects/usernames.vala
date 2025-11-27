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
 * Describes usernames assigned to a user, a supergroup, or a channel
 */
public class TDLib.Usernames : Error {

    /**
     * List of active usernames; the first one must be shown as the primary
     * username. The order of active usernames can be changed with
     * {@link Client.reorder_active_usernames}
     * {@link Client.reorder_bot_active_usernames} or
     * {@link Client.reorder_supergroup_active_usernames}
     */
    public Gee.ArrayList<string?> active_usernames { get; construct set; default = new Gee.ArrayList<string?> (); }

    /**
     * List of currently disabled usernames; the username can be activated
     * with {@link Client.toggle_username_is_active}
     * {@link Client.toggle_bot_username_is_active} or
     * {@link Client.toggle_supergroup_username_is_active}
     */
    public Gee.ArrayList<string?> disabled_usernames { get; construct set; default = new Gee.ArrayList<string?> (); }

    /**
     * Active or disabled username, which may be changed with
     * {@link Client.set_username} or {@link Client.set_supergroup_username}
     */
    public string editable_username { get; construct set; }

    /**
     * Collectible usernames that were purchased at [[https://fragment.com]]
     * and can be passed to {@link Client.get_collectible_item_info} for more
     * details
     */
    public Gee.ArrayList<string?> collectible_usernames { get; construct set; default = new Gee.ArrayList<string?> (); }

    public Usernames (
        Gee.ArrayList<string?> active_usernames,
        Gee.ArrayList<string?> disabled_usernames,
        string editable_username,
        Gee.ArrayList<string?> collectible_usernames
    ) {
        Object (
            active_usernames: active_usernames,
            disabled_usernames: disabled_usernames,
            editable_username: editable_username,
            collectible_usernames: collectible_usernames,
            tdlib_type: "usernames",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
