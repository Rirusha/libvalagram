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
 * Toggles whether non-administrators can receive only administrators and
 * bots using getSupergroupMembers or searchChatMembers. Can be called
 * only if supergroupFullInfo.can_hide_members == true
 */
internal class TDLib.ToggleSupergroupHasHiddenMembers : TDObject {

    /**
     * Identifier of the supergroup
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New value of has_hidden_members
     */
    public bool has_hidden_members { get; construct set; }

    public ToggleSupergroupHasHiddenMembers (
        int64 supergroup_id,
        bool has_hidden_members
    ) {
        Object (
            supergroup_id: supergroup_id,
            has_hidden_members: has_hidden_members,
            tdlib_type: "toggleSupergroupHasHiddenMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
