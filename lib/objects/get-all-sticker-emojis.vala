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
 * Returns unique emoji that correspond to stickers to be found by the
 * getStickers(sticker_type, query, 1000000, chat_id)
 */
public class TDLib.GetAllStickerEmojis : TDObject {

    /**
     * Type of the stickers to search for
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * Search query
     */
    public string query { get; construct set; }

    /**
     * Chat identifier for which to find stickers
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true if only main emoji for each found sticker must be included
     * in the result
     */
    public bool return_only_main_emoji { get; construct set; }

    public GetAllStickerEmojis (
        StickerType sticker_type,
        string query,
        int64 chat_id,
        bool return_only_main_emoji
    ) {
        Object (
            sticker_type: sticker_type,
            query: query,
            chat_id: chat_id,
            return_only_main_emoji: return_only_main_emoji,
            tdlib_type: "getAllStickerEmojis",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
