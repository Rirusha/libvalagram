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
 * Joins a regular group call that is not bound to a chat
 */
public class TDLib.JoinGroupCall : TDObject {

    /**
     * The group call to join
     */
    public InputGroupCall input_group_call { get; construct set; }

    /**
     * Parameters to join the call
     */
    public GroupCallJoinParameters join_parameters { get; construct set; }

    public JoinGroupCall (
        InputGroupCall input_group_call,
        GroupCallJoinParameters join_parameters
    ) {
        Object (
            input_group_call: input_group_call,
            join_parameters: join_parameters,
            tdlib_type: "joinGroupCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
