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
 * Represents a list of trending sticker sets
 */
public class TDLib.TrendingStickerSets : Error {

    /**
     * Approximate total number of trending sticker sets
     */
    public int32 total_count { get; construct set; }

    /**
     * List of trending sticker sets
     */
    public Gee.ArrayList<StickerSetInfo?> sets { get; construct set; default = new Gee.ArrayList<StickerSetInfo?> (); }

    /**
     * True, if the list contains sticker sets with premium stickers
     */
    public bool is_premium { get; construct set; }

    public TrendingStickerSets (
        int32 total_count,
        Gee.ArrayList<StickerSetInfo?> sets,
        bool is_premium
    ) {
        Object (
            total_count: total_count,
            sets: sets,
            is_premium: is_premium,
            tdlib_type: "trendingStickerSets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
