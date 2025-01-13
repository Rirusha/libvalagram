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
 * Describes type of sticker, which was used to create a chat photo
 */
public abstract class TDLib.ChatPhotoStickerType : Error {}

/**
 * Information about the sticker, which was used to create the chat photo
 */
public class TDLib.ChatPhotoStickerTypeRegularOrMask : ChatPhotoStickerType {

    /**
     * Sticker set identifier
     */
    public int64 sticker_set_id { get; construct set; }

    /**
     * Identifier of the sticker in the set
     */
    public int64 sticker_id { get; construct set; }

    public ChatPhotoStickerTypeRegularOrMask (
        int64 sticker_set_id,
        int64 sticker_id
    ) {
        Object (
            sticker_set_id: sticker_set_id,
            sticker_id: sticker_id,
            tdlib_type: "chatPhotoStickerTypeRegularOrMask",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Information about the custom emoji, which was used to create the chat
 * photo
 */
public class TDLib.ChatPhotoStickerTypeCustomEmoji : ChatPhotoStickerType {

    /**
     * Identifier of the custom emoji
     */
    public int64 custom_emoji_id { get; construct set; }

    public ChatPhotoStickerTypeCustomEmoji (
        int64 custom_emoji_id
    ) {
        Object (
            custom_emoji_id: custom_emoji_id,
            tdlib_type: "chatPhotoStickerTypeCustomEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
