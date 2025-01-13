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
 * Describes an image in JPEG format
 */
public class TDLib.PhotoSize : Error {

    /**
     * Image type (see https://core.telegram.org/constructor/photoSize)
     */
    public string type_ { get; construct set; }

    /**
     * Information about the image file
     */
    public File photo { get; construct set; }

    /**
     * Image width
     */
    public int32 width { get; construct set; }

    /**
     * Image height
     */
    public int32 height { get; construct set; }

    /**
     * Sizes of progressive JPEG file prefixes, which can be used to
     * preliminarily show the image; in bytes
     */
    public Gee.ArrayList<int32?> progressive_sizes { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public PhotoSize (
        string type_,
        File photo,
        int32 width,
        int32 height,
        Gee.ArrayList<int32?> progressive_sizes
    ) {
        Object (
            type_: type_,
            photo: photo,
            width: width,
            height: height,
            progressive_sizes: progressive_sizes,
            tdlib_type: "photoSize",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
