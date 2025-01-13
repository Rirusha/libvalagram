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
 * Returns a file with a segment of a group call stream in a modified OGG
 * format for audio or MPEG-4 format for video
 */
public class TDLib.GetGroupCallStreamSegment : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Point in time when the stream segment begins; Unix timestamp in
     * milliseconds
     */
    public int64 time_offset { get; construct set; }

    /**
     * Segment duration scale; 0-1. Segment's duration is 1000/(2**scale)
     * milliseconds
     */
    public int32 scale { get; construct set; }

    /**
     * Identifier of an audio/video channel to get as received from tgcalls
     */
    public int32 channel_id { get; construct set; }

    /**
     * Video quality as received from tgcalls; pass null to get the worst
     * available quality
     */
    public GroupCallVideoQuality video_quality { get; construct set; }

    public GetGroupCallStreamSegment (
        int32 group_call_id,
        int64 time_offset,
        int32 scale,
        int32 channel_id,
        GroupCallVideoQuality video_quality
    ) {
        Object (
            group_call_id: group_call_id,
            time_offset: time_offset,
            scale: scale,
            channel_id: channel_id,
            video_quality: video_quality,
            tdlib_type: "getGroupCallStreamSegment",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
