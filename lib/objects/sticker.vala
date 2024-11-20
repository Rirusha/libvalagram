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
 * Describes a sticker
 */
public class TDLib.Sticker : Error {

    /**
     * Unique sticker identifier within the set; 0 if none
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the sticker set to which the sticker belongs; 0 if none
     */
    public int64 set_id { get; construct set; }

    /**
     * Sticker width; as defined by the sender
     */
    public int32 width { get; construct set; }

    /**
     * Sticker height; as defined by the sender
     */
    public int32 height { get; construct set; }

    /**
     * Emoji corresponding to the sticker
     */
    public string emoji { get; construct set; }

    /**
     * Sticker format
     */
    public StickerFormat format { get; construct set; }

    /**
     * Sticker's full type
     */
    public StickerFullType full_type { get; construct set; }

    /**
     * Sticker thumbnail in WEBP or JPEG format; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    /**
     * File containing the sticker
     */
    public File sticker { get; construct set; }

    public Sticker (
        int64 id_,
        int64 set_id,
        int32 width,
        int32 height,
        string emoji,
        StickerFormat format,
        StickerFullType full_type,
        Thumbnail? thumbnail,
        File sticker
    ) {
        Object (
            id_: id_,
            set_id: set_id,
            width: width,
            height: height,
            emoji: emoji,
            format: format,
            full_type: full_type,
            thumbnail: thumbnail,
            sticker: sticker,
            tdlib_type: "sticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
