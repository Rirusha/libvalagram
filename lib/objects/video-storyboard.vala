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
 * Describes a storyboard for a video
 */
public class TDLib.VideoStoryboard : Error {

    /**
     * A JPEG file that contains tiled previews of video
     */
    public File storyboard_file { get; construct set; }

    /**
     * Width of a tile
     */
    public int32 width { get; construct set; }

    /**
     * Height of a tile
     */
    public int32 height { get; construct set; }

    /**
     * File that describes mapping of position in the video to a tile in the
     * JPEG file
     */
    public File map_file { get; construct set; }

    public VideoStoryboard (
        File storyboard_file,
        int32 width,
        int32 height,
        File map_file
    ) {
        Object (
            storyboard_file: storyboard_file,
            width: width,
            height: height,
            map_file: map_file,
            tdlib_type: "videoStoryboard",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
