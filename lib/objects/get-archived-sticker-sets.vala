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
 * Returns a list of archived sticker sets
 */
internal class TDLib.GetArchivedStickerSets : TDObject {

    /**
     * Type of the sticker sets to return
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * Identifier of the sticker set from which to return the result; use 0
     * to get results from the beginning
     */
    public int64 offset_sticker_set_id { get; construct set; }

    /**
     * The maximum number of sticker sets to return; up to 100
     */
    public int32 limit { get; construct set; }

    public GetArchivedStickerSets (
        StickerType sticker_type,
        int64 offset_sticker_set_id,
        int32 limit
    ) {
        Object (
            sticker_type: sticker_type,
            offset_sticker_set_id: offset_sticker_set_id,
            limit: limit,
            tdlib_type: "getArchivedStickerSets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
