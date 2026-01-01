/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Animated variant of a chat photo in MPEG4 format
 */
public class TDLib.AnimatedChatPhoto : Error {

    /**
     * Animation width and height
     */
    public int32 length { get; construct set; }

    /**
     * Information about the animation file
     */
    public File file { get; construct set; }

    /**
     * Timestamp of the frame, used as a static chat photo
     */
    public double main_frame_timestamp { get; construct set; }

    public AnimatedChatPhoto (
        int32 length,
        File file,
        double main_frame_timestamp
    ) {
        Object (
            length: length,
            file: file,
            main_frame_timestamp: main_frame_timestamp,
            tdlib_type: "animatedChatPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
