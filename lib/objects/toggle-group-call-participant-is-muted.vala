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
 * Toggles whether a participant of an active group call is muted,
 * unmuted, or allowed to unmute themselves; not supported for live
 * stories
 */
public class TDLib.ToggleGroupCallParticipantIsMuted : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Participant identifier
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * Pass true to mute the user; pass false to unmute them
     */
    public bool is_muted { get; construct set; }

    public ToggleGroupCallParticipantIsMuted (
        int32 group_call_id,
        MessageSender participant_id,
        bool is_muted
    ) {
        Object (
            group_call_id: group_call_id,
            participant_id: participant_id,
            is_muted: is_muted,
            tdlib_type: "toggleGroupCallParticipantIsMuted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
