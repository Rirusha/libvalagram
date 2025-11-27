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
 * Describes an available stream in a video chat or a live story
 */
public class TDLib.GroupCallStream : Error {

    /**
     * Identifier of an audio/video channel
     */
    public int32 channel_id { get; construct set; }

    /**
     * Scale of segment durations in the stream. The duration is
     * 1000/(2**scale) milliseconds
     */
    public int32 scale { get; construct set; }

    /**
     * Point in time when the stream currently ends; Unix timestamp in
     * milliseconds
     */
    public int64 time_offset { get; construct set; }

    public GroupCallStream (
        int32 channel_id,
        int32 scale,
        int64 time_offset
    ) {
        Object (
            channel_id: channel_id,
            scale: scale,
            time_offset: time_offset,
            tdlib_type: "groupCallStream",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
