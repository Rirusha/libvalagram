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
 * Starts recording of an active group call; for video chats only.
 * Requires groupCall.can_be_managed right
 */
public class TDLib.StartGroupCallRecording : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Group call recording title; 0-64 characters
     */
    public string title { get; construct set; }

    /**
     * Pass true to record a video file instead of an audio file
     */
    public bool record_video { get; construct set; }

    /**
     * Pass true to use portrait orientation for video instead of landscape
     * one
     */
    public bool use_portrait_orientation { get; construct set; }

    public StartGroupCallRecording (
        int32 group_call_id,
        string title,
        bool record_video,
        bool use_portrait_orientation
    ) {
        Object (
            group_call_id: group_call_id,
            title: title,
            record_video: record_video,
            use_portrait_orientation: use_portrait_orientation,
            tdlib_type: "startGroupCallRecording",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
