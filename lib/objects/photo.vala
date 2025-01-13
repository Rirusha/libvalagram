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
 * Describes a photo
 */
public class TDLib.Photo : Error {

    /**
     * True, if stickers were added to the photo. The list of corresponding
     * sticker sets can be received using getAttachedStickerSets
     */
    public bool has_stickers { get; construct set; }

    /**
     * Photo minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * Available variants of the photo, in different sizes
     */
    public Gee.ArrayList<PhotoSize?> sizes { get; construct set; default = new Gee.ArrayList<PhotoSize?> (); }

    public Photo (
        bool has_stickers,
        Minithumbnail? minithumbnail,
        Gee.ArrayList<PhotoSize?> sizes
    ) {
        Object (
            has_stickers: has_stickers,
            minithumbnail: minithumbnail,
            sizes: sizes,
            tdlib_type: "photo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
