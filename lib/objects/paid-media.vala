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
 * Describes a paid media
 */
public abstract class TDLib.PaidMedia : Error {}

/**
 * The media is hidden until the invoice is paid
 */
public class TDLib.PaidMediaPreview : PaidMedia {

    /**
     * Media width; 0 if unknown
     */
    public int32 width { get; construct set; }

    /**
     * Media height; 0 if unknown
     */
    public int32 height { get; construct set; }

    /**
     * Media duration, in seconds; 0 if unknown
     */
    public int32 duration { get; construct set; }

    /**
     * Media minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    public PaidMediaPreview (
        int32 width,
        int32 height,
        int32 duration,
        Minithumbnail? minithumbnail
    ) {
        Object (
            width: width,
            height: height,
            duration: duration,
            minithumbnail: minithumbnail,
            tdlib_type: "paidMediaPreview",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The media is a photo
 */
public class TDLib.PaidMediaPhoto : PaidMedia {

    /**
     * The photo
     */
    public Photo photo { get; construct set; }

    public PaidMediaPhoto (
        Photo photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "paidMediaPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The media is a video
 */
public class TDLib.PaidMediaVideo : PaidMedia {

    /**
     * The video
     */
    public Video video { get; construct set; }

    public PaidMediaVideo (
        Video video
    ) {
        Object (
            video: video,
            tdlib_type: "paidMediaVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The media is unsupported
 */
public class TDLib.PaidMediaUnsupported : PaidMedia {

    public PaidMediaUnsupported () {
        Object (
            tdlib_type: "paidMediaUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
