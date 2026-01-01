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
 * Describes an alternative re-encoded quality of a video file
 */
public class TDLib.AlternativeVideo : Error {

    /**
     * Unique identifier of the alternative video, which is used in the HLS
     * file
     */
    public int64 id_ { get; construct set; }

    /**
     * Video width
     */
    public int32 width { get; construct set; }

    /**
     * Video height
     */
    public int32 height { get; construct set; }

    /**
     * Codec used for video file encoding, for example, "h264", "h265",
     * "av1", or "av01"
     */
    public string codec { get; construct set; }

    /**
     * HLS file describing the video
     */
    public File hls_file { get; construct set; }

    /**
     * File containing the video
     */
    public File video { get; construct set; }

    public AlternativeVideo (
        int64 id_,
        int32 width,
        int32 height,
        string codec,
        File hls_file,
        File video
    ) {
        Object (
            id_: id_,
            width: width,
            height: height,
            codec: codec,
            hls_file: hls_file,
            video: video,
            tdlib_type: "alternativeVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
