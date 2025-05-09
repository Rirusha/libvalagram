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
 * Describes gifts available for resale
 */
public class TDLib.GiftsForResale : Error {

    /**
     * Total number of gifts found
     */
    public int32 total_count { get; construct set; }

    /**
     * The gifts
     */
    public Gee.ArrayList<GiftForResale?> gifts { get; construct set; default = new Gee.ArrayList<GiftForResale?> (); }

    /**
     * Available models; for {@link Client.search_gifts_for_resale} requests
     * without offset and attributes only
     */
    public Gee.ArrayList<UpgradedGiftModelCount?> models { get; construct set; default = new Gee.ArrayList<UpgradedGiftModelCount?> (); }

    /**
     * Available symbols; for {@link Client.search_gifts_for_resale} requests
     * without offset and attributes only
     */
    public Gee.ArrayList<UpgradedGiftSymbolCount?> symbols { get; construct set; default = new Gee.ArrayList<UpgradedGiftSymbolCount?> (); }

    /**
     * Available backdrops; for {@link Client.search_gifts_for_resale}
     * requests without offset and attributes only
     */
    public Gee.ArrayList<UpgradedGiftBackdropCount?> backdrops { get; construct set; default = new Gee.ArrayList<UpgradedGiftBackdropCount?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public GiftsForResale (
        int32 total_count,
        Gee.ArrayList<GiftForResale?> gifts,
        Gee.ArrayList<UpgradedGiftModelCount?> models,
        Gee.ArrayList<UpgradedGiftSymbolCount?> symbols,
        Gee.ArrayList<UpgradedGiftBackdropCount?> backdrops,
        string next_offset
    ) {
        Object (
            total_count: total_count,
            gifts: gifts,
            models: models,
            symbols: symbols,
            backdrops: backdrops,
            next_offset: next_offset,
            tdlib_type: "giftsForResale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
