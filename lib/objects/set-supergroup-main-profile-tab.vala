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
 * Changes the main profile tab of the channel; requires can_change_info
 * administrator right
 */
public class TDLib.SetSupergroupMainProfileTab : TDObject {

    /**
     * Identifier of the channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * The new value of the main profile tab
     */
    public ProfileTab main_profile_tab { get; construct set; }

    public SetSupergroupMainProfileTab (
        int64 supergroup_id,
        ProfileTab main_profile_tab
    ) {
        Object (
            supergroup_id: supergroup_id,
            main_profile_tab: main_profile_tab,
            tdlib_type: "setSupergroupMainProfileTab",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
