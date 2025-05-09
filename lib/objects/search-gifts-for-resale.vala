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
 * Returns upgraded gifts that can be bought from other owners
 */
public class TDLib.SearchGiftsForResale : TDObject {

    /**
     * Identifier of the regular gift that was upgraded to a unique gift
     */
    public int64 gift_id { get; construct set; }

    /**
     * Order in which the results will be sorted
     */
    public GiftForResaleOrder order { get; construct set; }

    /**
     * Attributes used to filter received gifts. If multiple attributes of
     * the same type are specified, then all of them are allowed.
     * If none attributes of specific type are specified, then all values for
     * this attribute type are allowed
     */
    public Gee.ArrayList<UpgradedGiftAttributeId?> attributes { get; construct set; default = new Gee.ArrayList<UpgradedGiftAttributeId?> (); }

    /**
     * Offset of the first entry to return as received from the previous
     * request with the same order and attributes; use empty string to get
     * the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of gifts to return
     */
    public int32 limit { get; construct set; }

    public SearchGiftsForResale (
        int64 gift_id,
        GiftForResaleOrder order,
        Gee.ArrayList<UpgradedGiftAttributeId?> attributes,
        string offset,
        int32 limit
    ) {
        Object (
            gift_id: gift_id,
            order: order,
            attributes: attributes,
            offset: offset,
            limit: limit,
            tdlib_type: "searchGiftsForResale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
