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
 * Describes type of sticker
 */
public abstract class TDLib.StickerType : Error {}

/**
 * The sticker is a regular sticker
 */
public class TDLib.StickerTypeRegular : StickerType {

    public StickerTypeRegular () {
        Object (
            tdlib_type: "stickerTypeRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sticker is a mask in WEBP format to be placed on photos or videos
 */
public class TDLib.StickerTypeMask : StickerType {

    public StickerTypeMask () {
        Object (
            tdlib_type: "stickerTypeMask",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sticker is a custom emoji to be used inside message text and
 * caption
 */
public class TDLib.StickerTypeCustomEmoji : StickerType {

    public StickerTypeCustomEmoji () {
        Object (
            tdlib_type: "stickerTypeCustomEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
