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
 * Changes volume level of a participant of an active group call. If the
 * current user can manage the group call or is the owner of the group
 * call,
 * then the participant's volume level will be changed for all users with
 * the default volume level
 */
public class TDLib.SetGroupCallParticipantVolumeLevel : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Participant identifier
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * New participant's volume level; 1-20000 in hundreds of percents
     */
    public int32 volume_level { get; construct set; }

    public SetGroupCallParticipantVolumeLevel (
        int32 group_call_id,
        MessageSender participant_id,
        int32 volume_level
    ) {
        Object (
            group_call_id: group_call_id,
            participant_id: participant_id,
            volume_level: volume_level,
            tdlib_type: "setGroupCallParticipantVolumeLevel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
