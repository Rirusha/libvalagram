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
 * Describes parameters used to join a group call
 */
public class TDLib.GroupCallJoinParameters : Error {

    /**
     * Audio channel synchronization source identifier; received from tgcalls
     */
    public int32 audio_source_id { get; construct set; }

    /**
     * Group call join payload; received from tgcalls
     */
    public string payload { get; construct set; }

    /**
     * Pass true to join the call with muted microphone
     */
    public bool is_muted { get; construct set; }

    /**
     * Pass true if the user's video is enabled
     */
    public bool is_my_video_enabled { get; construct set; }

    public GroupCallJoinParameters (
        int32 audio_source_id,
        string payload,
        bool is_muted,
        bool is_my_video_enabled
    ) {
        Object (
            audio_source_id: audio_source_id,
            payload: payload,
            is_muted: is_muted,
            is_my_video_enabled: is_my_video_enabled,
            tdlib_type: "groupCallJoinParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
