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
 * Returns information about a file with a map thumbnail in PNG format.
 * Only map thumbnail files with size less than 1MB can be downloaded
 */
internal class TDLib.GetMapThumbnailFile : TDObject {

    /**
     * Location of the map center
     */
    public Location location { get; construct set; }

    /**
     * Map zoom level; 13-20
     */
    public int32 zoom { get; construct set; }

    /**
     * Map width in pixels before applying scale; 16-1024
     */
    public int32 width { get; construct set; }

    /**
     * Map height in pixels before applying scale; 16-1024
     */
    public int32 height { get; construct set; }

    /**
     * Map scale; 1-3
     */
    public int32 scale { get; construct set; }

    /**
     * Identifier of a chat in which the thumbnail will be shown. Use 0 if
     * unknown
     */
    public int64 chat_id { get; construct set; }

    public GetMapThumbnailFile (
        Location location,
        int32 zoom,
        int32 width,
        int32 height,
        int32 scale,
        int64 chat_id
    ) {
        Object (
            location: location,
            zoom: zoom,
            width: width,
            height: height,
            scale: scale,
            chat_id: chat_id,
            tdlib_type: "getMapThumbnailFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
