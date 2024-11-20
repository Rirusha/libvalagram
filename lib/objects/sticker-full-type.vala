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
 * Contains full information about sticker type
 */
public abstract class TDLib.StickerFullType : Error {}

/**
 * The sticker is a regular sticker
 */
public class TDLib.StickerFullTypeRegular : StickerFullType {

    /**
     * Premium animation of the sticker; may be null. If present, only
     * Telegram Premium users can use the sticker
     */
    public File? premium_animation { get; construct set; }

    public StickerFullTypeRegular (
        File? premium_animation
    ) {
        Object (
            premium_animation: premium_animation,
            tdlib_type: "stickerFullTypeRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sticker is a mask in WEBP format to be placed on photos or videos
 */
public class TDLib.StickerFullTypeMask : StickerFullType {

    /**
     * Position where the mask is placed; may be null
     */
    public MaskPosition? mask_position { get; construct set; }

    public StickerFullTypeMask (
        MaskPosition? mask_position
    ) {
        Object (
            mask_position: mask_position,
            tdlib_type: "stickerFullTypeMask",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sticker is a custom emoji to be used inside message text and
 * caption. Currently, only Telegram Premium users can use custom emoji
 */
public class TDLib.StickerFullTypeCustomEmoji : StickerFullType {

    /**
     * Identifier of the custom emoji
     */
    public int64 custom_emoji_id { get; construct set; }

    /**
     * True, if the sticker must be repainted to a text color in messages,
     * the color of the Telegram Premium badge in emoji status, white color
     * on chat photos, or another appropriate color in other places
     */
    public bool needs_repainting { get; construct set; }

    public StickerFullTypeCustomEmoji (
        int64 custom_emoji_id,
        bool needs_repainting
    ) {
        Object (
            custom_emoji_id: custom_emoji_id,
            needs_repainting: needs_repainting,
            tdlib_type: "stickerFullTypeCustomEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
