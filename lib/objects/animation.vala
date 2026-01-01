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
 * Describes an animation file. The animation must be encoded in GIF or
 * MPEG4 format
 */
public class TDLib.Animation : Error {

    /**
     * Duration of the animation, in seconds; as defined by the sender
     */
    public int32 duration { get; construct set; }

    /**
     * Width of the animation
     */
    public int32 width { get; construct set; }

    /**
     * Height of the animation
     */
    public int32 height { get; construct set; }

    /**
     * Original name of the file; as defined by the sender
     */
    public string file_name { get; construct set; }

    /**
     * MIME type of the file, usually "image/gif" or "video/mp4"
     */
    public string mime_type { get; construct set; }

    /**
     * True, if stickers were added to the animation. The list of
     * corresponding sticker set can be received using
     * {@link Client.get_attached_sticker_sets}
     */
    public bool has_stickers { get; construct set; }

    /**
     * Animation minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * Animation thumbnail in JPEG or MPEG4 format; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    /**
     * File containing the animation
     */
    public File animation { get; construct set; }

    public Animation (
        int32 duration,
        int32 width,
        int32 height,
        string file_name,
        string mime_type,
        bool has_stickers,
        Minithumbnail? minithumbnail,
        Thumbnail? thumbnail,
        File animation
    ) {
        Object (
            duration: duration,
            width: width,
            height: height,
            file_name: file_name,
            mime_type: mime_type,
            has_stickers: has_stickers,
            minithumbnail: minithumbnail,
            thumbnail: thumbnail,
            animation: animation,
            tdlib_type: "animation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
