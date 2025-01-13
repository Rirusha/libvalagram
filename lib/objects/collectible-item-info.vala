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
 * Contains information about a collectible item and its last purchase
 */
public class TDLib.CollectibleItemInfo : Error {

    /**
     * Point in time (Unix timestamp) when the item was purchased
     */
    public int32 purchase_date { get; construct set; }

    /**
     * Currency for the paid amount
     */
    public string currency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Cryptocurrency used to pay for the item
     */
    public string cryptocurrency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the cryptocurrency
     */
    public int64 cryptocurrency_amount { get; construct set; }

    /**
     * Individual URL for the item on [[https://fragment.com]]
     */
    public string url { get; construct set; }

    public CollectibleItemInfo (
        int32 purchase_date,
        string currency,
        int64 amount,
        string cryptocurrency,
        int64 cryptocurrency_amount,
        string url
    ) {
        Object (
            purchase_date: purchase_date,
            currency: currency,
            amount: amount,
            cryptocurrency: cryptocurrency,
            cryptocurrency_amount: cryptocurrency_amount,
            url: url,
            tdlib_type: "collectibleItemInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
