/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Returns sticker sets owned by the current user
 */
public class TDLib.GetOwnedStickerSets : TDObject {

    /**
     * Identifier of the sticker set from which to return owned sticker sets;
     * use 0 to get results from the beginning
     */
    public int64 offset_sticker_set_id { get; construct set; }

    /**
     * The maximum number of sticker sets to be returned; must be positive
     * and can't be greater than 100. For optimal performance, the number of
     * returned objects is chosen by TDLib and can be smaller than the
     * specified limit
     */
    public int32 limit { get; construct set; }

    public GetOwnedStickerSets (
        int64 offset_sticker_set_id,
        int32 limit
    ) {
        Object (
            offset_sticker_set_id: offset_sticker_set_id,
            limit: limit,
            tdlib_type: "getOwnedStickerSets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
