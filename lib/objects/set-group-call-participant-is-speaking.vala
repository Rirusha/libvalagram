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
 * Informs TDLib that speaking state of a participant of an active group
 * call has changed. Returns identifier of the participant if it is found
 */
public class TDLib.SetGroupCallParticipantIsSpeaking : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Group call participant's synchronization audio source identifier, or 0
     * for the current user
     */
    public int32 audio_source { get; construct set; }

    /**
     * Pass true if the user is speaking
     */
    public bool is_speaking { get; construct set; }

    public SetGroupCallParticipantIsSpeaking (
        int32 group_call_id,
        int32 audio_source,
        bool is_speaking
    ) {
        Object (
            group_call_id: group_call_id,
            audio_source: audio_source,
            is_speaking: is_speaking,
            tdlib_type: "setGroupCallParticipantIsSpeaking",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
