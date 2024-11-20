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
 * Describes a video file sent in a story
 */
public class TDLib.StoryVideo : Error {

    /**
     * Duration of the video, in seconds
     */
    public double duration { get; construct set; }

    /**
     * Video width
     */
    public int32 width { get; construct set; }

    /**
     * Video height
     */
    public int32 height { get; construct set; }

    /**
     * True, if stickers were added to the video. The list of corresponding
     * sticker sets can be received using getAttachedStickerSets
     */
    public bool has_stickers { get; construct set; }

    /**
     * True, if the video has no sound
     */
    public bool is_animation { get; construct set; }

    /**
     * Video minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * Video thumbnail in JPEG or MPEG4 format; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    /**
     * Size of file prefix, which is expected to be preloaded, in bytes
     */
    public int32 preload_prefix_size { get; construct set; }

    /**
     * Timestamp of the frame used as video thumbnail
     */
    public double cover_frame_timestamp { get; construct set; }

    /**
     * File containing the video
     */
    public File video { get; construct set; }

    public StoryVideo (
        double duration,
        int32 width,
        int32 height,
        bool has_stickers,
        bool is_animation,
        Minithumbnail? minithumbnail,
        Thumbnail? thumbnail,
        int32 preload_prefix_size,
        double cover_frame_timestamp,
        File video
    ) {
        Object (
            duration: duration,
            width: width,
            height: height,
            has_stickers: has_stickers,
            is_animation: is_animation,
            minithumbnail: minithumbnail,
            thumbnail: thumbnail,
            preload_prefix_size: preload_prefix_size,
            cover_frame_timestamp: cover_frame_timestamp,
            video: video,
            tdlib_type: "storyVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
