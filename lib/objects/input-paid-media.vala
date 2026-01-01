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
 * Describes a paid media to be sent
 */
public class TDLib.InputPaidMedia : Error {

    /**
     * Type of the media
     */
    public InputPaidMediaType type_ { get; construct set; }

    /**
     * Photo or video to be sent
     */
    public InputFile media { get; construct set; }

    /**
     * Media thumbnail; pass null to skip thumbnail uploading
     */
    public InputThumbnail thumbnail { get; construct set; }

    /**
     * File identifiers of the stickers added to the media, if applicable
     */
    public Gee.ArrayList<int32?> added_sticker_file_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Media width
     */
    public int32 width { get; construct set; }

    /**
     * Media height
     */
    public int32 height { get; construct set; }

    public InputPaidMedia (
        InputPaidMediaType type_,
        InputFile media,
        InputThumbnail thumbnail,
        Gee.ArrayList<int32?> added_sticker_file_ids,
        int32 width,
        int32 height
    ) {
        Object (
            type_: type_,
            media: media,
            thumbnail: thumbnail,
            added_sticker_file_ids: added_sticker_file_ids,
            width: width,
            height: height,
            tdlib_type: "inputPaidMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
