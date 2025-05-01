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
 * Returns information about participants of a non-joined group call that
 * is not bound to a chat
 */
public class TDLib.GetGroupCallParticipants : TDObject {

    /**
     * The group call which participants will be returned
     */
    public InputGroupCall input_group_call { get; construct set; }

    /**
     * The maximum number of participants to return; must be positive
     */
    public int32 limit { get; construct set; }

    public GetGroupCallParticipants (
        InputGroupCall input_group_call,
        int32 limit
    ) {
        Object (
            input_group_call: input_group_call,
            limit: limit,
            tdlib_type: "getGroupCallParticipants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
