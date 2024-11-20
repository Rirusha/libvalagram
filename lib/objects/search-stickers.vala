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
 * Searches for stickers from public sticker sets that correspond to any
 * of the given emoji
 */
internal class TDLib.SearchStickers : TDObject {

    /**
     * Type of the stickers to return
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * Space-separated list of emojis to search for; must be non-empty
     */
    public string emojis { get; construct set; }

    /**
     * The maximum number of stickers to be returned; 0-100
     */
    public int32 limit { get; construct set; }

    public SearchStickers (
        StickerType sticker_type,
        string emojis,
        int32 limit
    ) {
        Object (
            sticker_type: sticker_type,
            emojis: emojis,
            limit: limit,
            tdlib_type: "searchStickers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
