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
 * Searches for a sticker set by its name
 */
public class TDLib.SearchStickerSet : TDObject {

    /**
     * Name of the sticker set
     */
    public string name { get; construct set; }

    /**
     * Pass true to ignore local cache of sticker sets and always send a
     * network request
     */
    public bool ignore_cache { get; construct set; }

    public SearchStickerSet (
        string name,
        bool ignore_cache
    ) {
        Object (
            name: name,
            ignore_cache: ignore_cache,
            tdlib_type: "searchStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
