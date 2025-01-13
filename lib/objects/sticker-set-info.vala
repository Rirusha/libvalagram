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
 * Represents short information about a sticker set
 */
public class TDLib.StickerSetInfo : Error {

    /**
     * Identifier of the sticker set
     */
    public int64 id_ { get; construct set; }

    /**
     * Title of the sticker set
     */
    public string title { get; construct set; }

    /**
     * Name of the sticker set
     */
    public string name { get; construct set; }

    /**
     * Sticker set thumbnail in WEBP, TGS, or WEBM format with width and
     * height 100; may be null. The file can be downloaded only before the
     * thumbnail is changed
     */
    public Thumbnail? thumbnail { get; construct set; }

    /**
     * Sticker set thumbnail's outline; may be null if unknown
     */
    public Outline? thumbnail_outline { get; construct set; }

    /**
     * True, if the sticker set is owned by the current user
     */
    public bool is_owned { get; construct set; }

    /**
     * True, if the sticker set has been installed by the current user
     */
    public bool is_installed { get; construct set; }

    /**
     * True, if the sticker set has been archived. A sticker set can't be
     * installed and archived simultaneously
     */
    public bool is_archived { get; construct set; }

    /**
     * True, if the sticker set is official
     */
    public bool is_official { get; construct set; }

    /**
     * Type of the stickers in the set
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * True, if stickers in the sticker set are custom emoji that must be
     * repainted; for custom emoji sticker sets only
     */
    public bool needs_repainting { get; construct set; }

    /**
     * True, if stickers in the sticker set are custom emoji that can be used
     * as chat emoji status; for custom emoji sticker sets only
     */
    public bool is_allowed_as_chat_emoji_status { get; construct set; }

    /**
     * True for already viewed trending sticker sets
     */
    public bool is_viewed { get; construct set; }

    /**
     * Total number of stickers in the set
     */
    public int32 size { get; construct set; }

    /**
     * Up to the first 5 stickers from the set, depending on the context. If
     * the application needs more stickers the full sticker set needs to be
     * requested
     */
    public Gee.ArrayList<Sticker?> covers { get; construct set; default = new Gee.ArrayList<Sticker?> (); }

    public StickerSetInfo (
        int64 id_,
        string title,
        string name,
        Thumbnail? thumbnail,
        Outline? thumbnail_outline,
        bool is_owned,
        bool is_installed,
        bool is_archived,
        bool is_official,
        StickerType sticker_type,
        bool needs_repainting,
        bool is_allowed_as_chat_emoji_status,
        bool is_viewed,
        int32 size,
        Gee.ArrayList<Sticker?> covers
    ) {
        Object (
            id_: id_,
            title: title,
            name: name,
            thumbnail: thumbnail,
            thumbnail_outline: thumbnail_outline,
            is_owned: is_owned,
            is_installed: is_installed,
            is_archived: is_archived,
            is_official: is_official,
            sticker_type: sticker_type,
            needs_repainting: needs_repainting,
            is_allowed_as_chat_emoji_status: is_allowed_as_chat_emoji_status,
            is_viewed: is_viewed,
            size: size,
            covers: covers,
            tdlib_type: "stickerSetInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
