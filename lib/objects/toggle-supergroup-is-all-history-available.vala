/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Toggles whether the message history of a supergroup is available to
 * new members; requires can_change_info member right
 */
public class TDLib.ToggleSupergroupIsAllHistoryAvailable : TDObject {

    /**
     * The identifier of the supergroup
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * The new value of is_all_history_available
     */
    public bool is_all_history_available { get; construct set; }

    public ToggleSupergroupIsAllHistoryAvailable (
        int64 supergroup_id,
        bool is_all_history_available
    ) {
        Object (
            supergroup_id: supergroup_id,
            is_all_history_available: is_all_history_available,
            tdlib_type: "toggleSupergroupIsAllHistoryAvailable",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
