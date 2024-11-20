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
 * Toggles whether joining is mandatory to send messages to a discussion
 * supergroup; requires can_restrict_members administrator right
 */
internal class TDLib.ToggleSupergroupJoinToSendMessages : TDObject {

    /**
     * Identifier of the supergroup that isn't a broadcast group
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New value of join_to_send_messages
     */
    public bool join_to_send_messages { get; construct set; }

    public ToggleSupergroupJoinToSendMessages (
        int64 supergroup_id,
        bool join_to_send_messages
    ) {
        Object (
            supergroup_id: supergroup_id,
            join_to_send_messages: join_to_send_messages,
            tdlib_type: "toggleSupergroupJoinToSendMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
