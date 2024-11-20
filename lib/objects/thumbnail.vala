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
 * Represents a thumbnail
 */
public class TDLib.Thumbnail : Error {

    /**
     * Thumbnail format
     */
    public ThumbnailFormat format { get; construct set; }

    /**
     * Thumbnail width
     */
    public int32 width { get; construct set; }

    /**
     * Thumbnail height
     */
    public int32 height { get; construct set; }

    /**
     * The thumbnail
     */
    public File file { get; construct set; }

    public Thumbnail (
        ThumbnailFormat format,
        int32 width,
        int32 height,
        File file
    ) {
        Object (
            format: format,
            width: width,
            height: height,
            file: file,
            tdlib_type: "thumbnail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
