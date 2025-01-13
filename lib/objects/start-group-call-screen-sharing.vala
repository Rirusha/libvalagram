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
 * Starts screen sharing in a joined group call. Returns join response
 * payload for tgcalls
 */
internal class TDLib.StartGroupCallScreenSharing : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Screen sharing audio channel synchronization source identifier;
     * received from tgcalls
     */
    public int32 audio_source_id { get; construct set; }

    /**
     * Group call join payload; received from tgcalls
     */
    public string payload { get; construct set; }

    public StartGroupCallScreenSharing (
        int32 group_call_id,
        int32 audio_source_id,
        string payload
    ) {
        Object (
            group_call_id: group_call_id,
            audio_source_id: audio_source_id,
            payload: payload,
            tdlib_type: "startGroupCallScreenSharing",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
