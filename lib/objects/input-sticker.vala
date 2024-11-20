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
 * A sticker to be added to a sticker set
 */
public class TDLib.InputSticker : Error {

    /**
     * File with the sticker; must fit in a 512x512 square. For WEBP stickers
     * the file must be in WEBP or PNG format, which will be converted to
     * WEBP server-side.
     * See https://core.telegram.org/animated_stickers#technical-requirements
     * for technical requirements
     */
    public InputFile sticker { get; construct set; }

    /**
     * Format of the sticker
     */
    public StickerFormat format { get; construct set; }

    /**
     * String with 1-20 emoji corresponding to the sticker
     */
    public string emojis { get; construct set; }

    /**
     * Position where the mask is placed; pass null if not specified
     */
    public MaskPosition mask_position { get; construct set; }

    /**
     * List of up to 20 keywords with total length up to 64 characters, which
     * can be used to find the sticker
     */
    public Gee.ArrayList<string?> keywords { get; construct set; default = new Gee.ArrayList<string?> (); }

    public InputSticker (
        InputFile sticker,
        StickerFormat format,
        string emojis,
        MaskPosition mask_position,
        Gee.ArrayList<string?> keywords
    ) {
        Object (
            sticker: sticker,
            format: format,
            emojis: emojis,
            mask_position: mask_position,
            keywords: keywords,
            tdlib_type: "inputSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
