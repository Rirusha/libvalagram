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
 * Describes a custom emoji to be shown instead of the Telegram Premium
 * badge
 */
public class TDLib.EmojiStatus : Error {

    /**
     * Identifier of the custom emoji in stickerFormatTgs format
     */
    public int64 custom_emoji_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the status will expire; 0 if never
     */
    public int32 expiration_date { get; construct set; }

    public EmojiStatus (
        int64 custom_emoji_id,
        int32 expiration_date
    ) {
        Object (
            custom_emoji_id: custom_emoji_id,
            expiration_date: expiration_date,
            tdlib_type: "emojiStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
