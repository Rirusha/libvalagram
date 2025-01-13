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
 * Describes type of emoji category
 */
public abstract class TDLib.EmojiCategoryType : Error {}

/**
 * The category must be used by default (e.g., for custom emoji or
 * animation search)
 */
public class TDLib.EmojiCategoryTypeDefault : EmojiCategoryType {

    public EmojiCategoryTypeDefault () {
        Object (
            tdlib_type: "emojiCategoryTypeDefault",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The category must be used by default for regular sticker selection. It
 * may contain greeting emoji category and premium stickers
 */
public class TDLib.EmojiCategoryTypeRegularStickers : EmojiCategoryType {

    public EmojiCategoryTypeRegularStickers () {
        Object (
            tdlib_type: "emojiCategoryTypeRegularStickers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The category must be used for emoji status selection
 */
public class TDLib.EmojiCategoryTypeEmojiStatus : EmojiCategoryType {

    public EmojiCategoryTypeEmojiStatus () {
        Object (
            tdlib_type: "emojiCategoryTypeEmojiStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The category must be used for chat photo emoji selection
 */
public class TDLib.EmojiCategoryTypeChatPhoto : EmojiCategoryType {

    public EmojiCategoryTypeChatPhoto () {
        Object (
            tdlib_type: "emojiCategoryTypeChatPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
