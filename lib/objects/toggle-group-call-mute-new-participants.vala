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
 * Toggles whether new participants of a group call can be unmuted only
 * by administrators of the group call. Requires
 * groupCall.can_toggle_mute_new_participants group call flag
 */
internal class TDLib.ToggleGroupCallMuteNewParticipants : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * New value of the mute_new_participants setting
     */
    public bool mute_new_participants { get; construct set; }

    public ToggleGroupCallMuteNewParticipants (
        int32 group_call_id,
        bool mute_new_participants
    ) {
        Object (
            group_call_id: group_call_id,
            mute_new_participants: mute_new_participants,
            tdlib_type: "toggleGroupCallMuteNewParticipants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
