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
 * Toggles whether aggressive anti-spam checks are enabled in the
 * supergroup. Can be called only if
 * supergroupFullInfo.can_toggle_aggressive_anti_spam == true
 */
internal class TDLib.ToggleSupergroupHasAggressiveAntiSpamEnabled : TDObject {

    /**
     * The identifier of the supergroup, which isn't a broadcast group
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * The new value of has_aggressive_anti_spam_enabled
     */
    public bool has_aggressive_anti_spam_enabled { get; construct set; }

    public ToggleSupergroupHasAggressiveAntiSpamEnabled (
        int64 supergroup_id,
        bool has_aggressive_anti_spam_enabled
    ) {
        Object (
            supergroup_id: supergroup_id,
            has_aggressive_anti_spam_enabled: has_aggressive_anti_spam_enabled,
            tdlib_type: "toggleSupergroupHasAggressiveAntiSpamEnabled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
