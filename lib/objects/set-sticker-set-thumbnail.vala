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
 * Sets a sticker set thumbnail
 */
public class TDLib.SetStickerSetThumbnail : TDObject {

    /**
     * Sticker set owner; ignored for regular users
     */
    public int64 user_id { get; construct set; }

    /**
     * Sticker set name. The sticker set must be owned by the current user
     */
    public string name { get; construct set; }

    /**
     * Thumbnail to set; pass null to remove the sticker set thumbnail
     */
    public InputFile thumbnail { get; construct set; }

    /**
     * Format of the thumbnail; pass null if thumbnail is removed
     */
    public StickerFormat format { get; construct set; }

    public SetStickerSetThumbnail (
        int64 user_id,
        string name,
        InputFile thumbnail,
        StickerFormat format
    ) {
        Object (
            user_id: user_id,
            name: name,
            thumbnail: thumbnail,
            format: format,
            tdlib_type: "setStickerSetThumbnail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
