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
 * Loads more participants of a group call. The loaded participants will
 * be received through updates. Use the field
 * groupCall.loaded_all_participants to check whether all participants
 * have already been loaded
 */
internal class TDLib.LoadGroupCallParticipants : TDObject {

    /**
     * Group call identifier. The group call must be previously received
     * through getGroupCall and must be joined or being joined
     */
    public int32 group_call_id { get; construct set; }

    /**
     * The maximum number of participants to load; up to 100
     */
    public int32 limit { get; construct set; }

    public LoadGroupCallParticipants (
        int32 group_call_id,
        int32 limit
    ) {
        Object (
            group_call_id: group_call_id,
            limit: limit,
            tdlib_type: "loadGroupCallParticipants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
