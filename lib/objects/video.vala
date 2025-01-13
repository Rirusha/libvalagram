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
 * Describes a video file
 */
public class TDLib.Video : Error {

    /**
     * Duration of the video, in seconds; as defined by the sender
     */
    public int32 duration { get; construct set; }

    /**
     * Video width; as defined by the sender
     */
    public int32 width { get; construct set; }

    /**
     * Video height; as defined by the sender
     */
    public int32 height { get; construct set; }

    /**
     * Original name of the file; as defined by the sender
     */
    public string file_name { get; construct set; }

    /**
     * MIME type of the file; as defined by the sender
     */
    public string mime_type { get; construct set; }

    /**
     * True, if stickers were added to the video. The list of corresponding
     * sticker sets can be received using
     * {@link Client.get_attached_sticker_sets}
     */
    public bool has_stickers { get; construct set; }

    /**
     * True, if the video is expected to be streamed
     */
    public bool supports_streaming { get; construct set; }

    /**
     * Video minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may
     * be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    /**
     * File containing the video
     */
    public File video { get; construct set; }

    public Video (
        int32 duration,
        int32 width,
        int32 height,
        string file_name,
        string mime_type,
        bool has_stickers,
        bool supports_streaming,
        Minithumbnail? minithumbnail,
        Thumbnail? thumbnail,
        File video
    ) {
        Object (
            duration: duration,
            width: width,
            height: height,
            file_name: file_name,
            mime_type: mime_type,
            has_stickers: has_stickers,
            supports_streaming: supports_streaming,
            minithumbnail: minithumbnail,
            thumbnail: thumbnail,
            video: video,
            tdlib_type: "video",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
