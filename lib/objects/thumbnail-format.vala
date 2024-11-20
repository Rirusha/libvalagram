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
 * Describes format of a thumbnail
 */
public abstract class TDLib.ThumbnailFormat : Error {}

/**
 * The thumbnail is in JPEG format
 */
public class TDLib.ThumbnailFormatJpeg : ThumbnailFormat {

    public ThumbnailFormatJpeg () {
        Object (
            tdlib_type: "thumbnailFormatJpeg",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The thumbnail is in static GIF format. It will be used only for some
 * bot inline query results
 */
public class TDLib.ThumbnailFormatGif : ThumbnailFormat {

    public ThumbnailFormatGif () {
        Object (
            tdlib_type: "thumbnailFormatGif",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The thumbnail is in MPEG4 format. It will be used only for some
 * animations and videos
 */
public class TDLib.ThumbnailFormatMpeg4 : ThumbnailFormat {

    public ThumbnailFormatMpeg4 () {
        Object (
            tdlib_type: "thumbnailFormatMpeg4",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The thumbnail is in PNG format. It will be used only for background
 * patterns
 */
public class TDLib.ThumbnailFormatPng : ThumbnailFormat {

    public ThumbnailFormatPng () {
        Object (
            tdlib_type: "thumbnailFormatPng",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The thumbnail is in TGS format. It will be used only for sticker sets
 */
public class TDLib.ThumbnailFormatTgs : ThumbnailFormat {

    public ThumbnailFormatTgs () {
        Object (
            tdlib_type: "thumbnailFormatTgs",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The thumbnail is in WEBM format. It will be used only for sticker sets
 */
public class TDLib.ThumbnailFormatWebm : ThumbnailFormat {

    public ThumbnailFormatWebm () {
        Object (
            tdlib_type: "thumbnailFormatWebm",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The thumbnail is in WEBP format. It will be used only for some
 * stickers and sticker sets
 */
public class TDLib.ThumbnailFormatWebp : ThumbnailFormat {

    public ThumbnailFormatWebp () {
        Object (
            tdlib_type: "thumbnailFormatWebp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
