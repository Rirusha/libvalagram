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
 * Describes type of emoji status
 */
public abstract class TDLib.EmojiStatusType : Error {}

/**
 * A custom emoji set as emoji status
 */
public class TDLib.EmojiStatusTypeCustomEmoji : EmojiStatusType {

    /**
     * Identifier of the custom emoji in stickerFormatTgs format
     */
    public int64 custom_emoji_id { get; construct set; }

    public EmojiStatusTypeCustomEmoji (
        int64 custom_emoji_id
    ) {
        Object (
            custom_emoji_id: custom_emoji_id,
            tdlib_type: "emojiStatusTypeCustomEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An upgraded gift set as emoji status
 */
public class TDLib.EmojiStatusTypeUpgradedGift : EmojiStatusType {

    /**
     * Identifier of the upgraded gift
     */
    public int64 upgraded_gift_id { get; construct set; }

    /**
     * The title of the upgraded gift
     */
    public string gift_title { get; construct set; }

    /**
     * Unique name of the upgraded gift that can be used with
     * internalLinkTypeUpgradedGift
     */
    public string gift_name { get; construct set; }

    /**
     * Custom emoji identifier of the model of the upgraded gift
     */
    public int64 model_custom_emoji_id { get; construct set; }

    /**
     * Custom emoji identifier of the symbol of the upgraded gift
     */
    public int64 symbol_custom_emoji_id { get; construct set; }

    /**
     * Colors of the backdrop of the upgraded gift
     */
    public UpgradedGiftBackdropColors backdrop_colors { get; construct set; }

    public EmojiStatusTypeUpgradedGift (
        int64 upgraded_gift_id,
        string gift_title,
        string gift_name,
        int64 model_custom_emoji_id,
        int64 symbol_custom_emoji_id,
        UpgradedGiftBackdropColors backdrop_colors
    ) {
        Object (
            upgraded_gift_id: upgraded_gift_id,
            gift_title: gift_title,
            gift_name: gift_name,
            model_custom_emoji_id: model_custom_emoji_id,
            symbol_custom_emoji_id: symbol_custom_emoji_id,
            backdrop_colors: backdrop_colors,
            tdlib_type: "emojiStatusTypeUpgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
