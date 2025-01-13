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
 * Describes a media from a link preview album
 */
public abstract class TDLib.LinkPreviewAlbumMedia : Error {}

/**
 * The media is a photo
 */
public class TDLib.LinkPreviewAlbumMediaPhoto : LinkPreviewAlbumMedia {

    /**
     * Photo description
     */
    public Photo photo { get; construct set; }

    public LinkPreviewAlbumMediaPhoto (
        Photo photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "linkPreviewAlbumMediaPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The media is a video
 */
public class TDLib.LinkPreviewAlbumMediaVideo : LinkPreviewAlbumMedia {

    /**
     * Video description
     */
    public Video video { get; construct set; }

    public LinkPreviewAlbumMediaVideo (
        Video video
    ) {
        Object (
            video: video,
            tdlib_type: "linkPreviewAlbumMediaVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
