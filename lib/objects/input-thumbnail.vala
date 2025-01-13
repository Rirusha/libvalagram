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
 * A thumbnail to be sent along with a file; must be in JPEG or WEBP
 * format for stickers, and less than 200 KB in size
 */
public class TDLib.InputThumbnail : Error {

    /**
     * Thumbnail file to send. Sending thumbnails by file_id is currently not
     * supported
     */
    public InputFile thumbnail { get; construct set; }

    /**
     * Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown
     */
    public int32 width { get; construct set; }

    /**
     * Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
     */
    public int32 height { get; construct set; }

    public InputThumbnail (
        InputFile thumbnail,
        int32 width,
        int32 height
    ) {
        Object (
            thumbnail: thumbnail,
            width: width,
            height: height,
            tdlib_type: "inputThumbnail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
