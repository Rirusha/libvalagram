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
 * Creates a new sticker set. Returns the newly created sticker set
 */
public class TDLib.CreateNewStickerSet : TDObject {

    /**
     * Sticker set owner; ignored for regular users
     */
    public int64 user_id { get; construct set; }

    /**
     * Sticker set title; 1-64 characters
     */
    public string title { get; construct set; }

    /**
     * Sticker set name. Can contain only English letters, digits and
     * underscores. Must end with *"_by_<bot username>"* (*<bot_username>* is
     * case insensitive) for bots; 0-64 characters.
     * If empty, then the name returned by
     * {@link Client.get_suggested_sticker_set_name} will be used
     * automatically
     */
    public string name { get; construct set; }

    /**
     * Type of the stickers in the set
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * Pass true if stickers in the sticker set must be repainted; for custom
     * emoji sticker sets only
     */
    public bool needs_repainting { get; construct set; }

    /**
     * List of stickers to be added to the set; 1-200 stickers for custom
     * emoji sticker sets, and 1-120 stickers otherwise. For TGS stickers,
     * {@link Client.upload_sticker_file} must be used before the sticker is
     * shown
     */
    public Gee.ArrayList<InputSticker?> stickers { get; construct set; default = new Gee.ArrayList<InputSticker?> (); }

    /**
     * Source of the sticker set; may be empty if unknown
     */
    public string source { get; construct set; }

    public CreateNewStickerSet (
        int64 user_id,
        string title,
        string name,
        StickerType sticker_type,
        bool needs_repainting,
        Gee.ArrayList<InputSticker?> stickers,
        string source
    ) {
        Object (
            user_id: user_id,
            title: title,
            name: name,
            sticker_type: sticker_type,
            needs_repainting: needs_repainting,
            stickers: stickers,
            source: source,
            tdlib_type: "createNewStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
