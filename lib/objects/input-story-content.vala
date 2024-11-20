/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * The content of a story to send
 */
public abstract class TDLib.InputStoryContent : Error {}

/**
 * A photo story
 */
public class TDLib.InputStoryContentPhoto : InputStoryContent {

    /**
     * Photo to send. The photo must be at most 10 MB in size. The photo size
     * must be 1080x1920
     */
    public InputFile photo { get; construct set; }

    /**
     * File identifiers of the stickers added to the photo, if applicable
     */
    public Gee.ArrayList<int32?> added_sticker_file_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public InputStoryContentPhoto (
        InputFile photo,
        Gee.ArrayList<int32?> added_sticker_file_ids
    ) {
        Object (
            photo: photo,
            added_sticker_file_ids: added_sticker_file_ids,
            tdlib_type: "inputStoryContentPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video story
 */
public class TDLib.InputStoryContentVideo : InputStoryContent {

    /**
     * Video to be sent. The video size must be 720x1280. The video must be
     * streamable and stored in MPEG4 format, after encoding with H.265 codec
     * and key frames added each second
     */
    public InputFile video { get; construct set; }

    /**
     * File identifiers of the stickers added to the video, if applicable
     */
    public Gee.ArrayList<int32?> added_sticker_file_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Precise duration of the video, in seconds; 0-60
     */
    public double duration { get; construct set; }

    /**
     * Timestamp of the frame, which will be used as video thumbnail
     */
    public double cover_frame_timestamp { get; construct set; }

    /**
     * True, if the video has no sound
     */
    public bool is_animation { get; construct set; }

    public InputStoryContentVideo (
        InputFile video,
        Gee.ArrayList<int32?> added_sticker_file_ids,
        double duration,
        double cover_frame_timestamp,
        bool is_animation
    ) {
        Object (
            video: video,
            added_sticker_file_ids: added_sticker_file_ids,
            duration: duration,
            cover_frame_timestamp: cover_frame_timestamp,
            is_animation: is_animation,
            tdlib_type: "inputStoryContentVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
