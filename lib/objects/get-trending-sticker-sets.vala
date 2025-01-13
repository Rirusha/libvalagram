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
 * Returns a list of trending sticker sets. For optimal performance, the
 * number of returned sticker sets is chosen by TDLib
 */
internal class TDLib.GetTrendingStickerSets : TDObject {

    /**
     * Type of the sticker sets to return
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * The offset from which to return the sticker sets; must be non-negative
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of sticker sets to be returned; up to 100. For
     * optimal performance, the number of returned sticker sets is chosen by
     * TDLib and can be smaller than the specified limit, even if the end of
     * the list has not been reached
     */
    public int32 limit { get; construct set; }

    public GetTrendingStickerSets (
        StickerType sticker_type,
        int32 offset,
        int32 limit
    ) {
        Object (
            sticker_type: sticker_type,
            offset: offset,
            limit: limit,
            tdlib_type: "getTrendingStickerSets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
