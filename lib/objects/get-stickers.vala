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
 * Returns stickers from the installed sticker sets that correspond to
 * any of the given emoji or can be found by sticker-specific keywords.
 * If the query is non-empty, then favorite, recently used or trending
 * stickers may also be returned
 */
internal class TDLib.GetStickers : TDObject {

    /**
     * Type of the stickers to return
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * Search query; a space-separated list of emojis or a keyword prefix. If
     * empty, returns all known installed stickers
     */
    public string query { get; construct set; }

    /**
     * The maximum number of stickers to be returned
     */
    public int32 limit { get; construct set; }

    /**
     * Chat identifier for which to return stickers. Available custom emoji
     * stickers may be different for different chats
     */
    public int64 chat_id { get; construct set; }

    public GetStickers (
        StickerType sticker_type,
        string query,
        int32 limit,
        int64 chat_id
    ) {
        Object (
            sticker_type: sticker_type,
            query: query,
            limit: limit,
            chat_id: chat_id,
            tdlib_type: "getStickers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
