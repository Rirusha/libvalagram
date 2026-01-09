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
 * Contains information about value of an upgraded gift
 */
public class TDLib.UpgradedGiftValueInfo : Error {

    /**
     * ISO 4217 currency code of the currency in which the prices are
     * represented
     */
    public string currency { get; construct set; }

    /**
     * Estimated value of the gift; in the smallest units of the currency
     */
    public int64 value { get; construct set; }

    /**
     * True, if the value is calculated as average value of similar sold
     * gifts. Otherwise, it is based on the sale price of the gift
     */
    public bool is_value_average { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the corresponding regular gift was
     * originally purchased
     */
    public int32 initial_sale_date { get; construct set; }

    /**
     * The Telegram Star amount that was paid for the gift
     */
    public int64 initial_sale_star_count { get; construct set; }

    /**
     * Initial price of the gift; in the smallest units of the currency
     */
    public int64 initial_sale_price { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the upgraded gift was purchased
     * last time; 0 if never
     */
    public int32 last_sale_date { get; construct set; }

    /**
     * Last purchase price of the gift; in the smallest units of the
     * currency; 0 if the gift has never been resold
     */
    public int64 last_sale_price { get; construct set; }

    /**
     * True, if the last sale was completed on Fragment
     */
    public bool is_last_sale_on_fragment { get; construct set; }

    /**
     * The current minimum price of gifts upgraded from the same gift; in the
     * smallest units of the currency; 0 if there are no such gifts
     */
    public int64 minimum_price { get; construct set; }

    /**
     * The average sale price in the last month of gifts upgraded from the
     * same gift; in the smallest units of the currency; 0 if there were no
     * such sales
     */
    public int64 average_sale_price { get; construct set; }

    /**
     * Number of gifts upgraded from the same gift being resold on Telegram
     */
    public int32 telegram_listed_gift_count { get; construct set; }

    /**
     * Number of gifts upgraded from the same gift being resold on Fragment
     */
    public int32 fragment_listed_gift_count { get; construct set; }

    /**
     * The HTTPS link to the Fragment for the gift; may be empty if there are
     * no such gifts being sold on Fragment
     */
    public string fragment_url { get; construct set; }

    public UpgradedGiftValueInfo (
        string currency,
        int64 value,
        bool is_value_average,
        int32 initial_sale_date,
        int64 initial_sale_star_count,
        int64 initial_sale_price,
        int32 last_sale_date,
        int64 last_sale_price,
        bool is_last_sale_on_fragment,
        int64 minimum_price,
        int64 average_sale_price,
        int32 telegram_listed_gift_count,
        int32 fragment_listed_gift_count,
        string fragment_url
    ) {
        Object (
            currency: currency,
            value: value,
            is_value_average: is_value_average,
            initial_sale_date: initial_sale_date,
            initial_sale_star_count: initial_sale_star_count,
            initial_sale_price: initial_sale_price,
            last_sale_date: last_sale_date,
            last_sale_price: last_sale_price,
            is_last_sale_on_fragment: is_last_sale_on_fragment,
            minimum_price: minimum_price,
            average_sale_price: average_sale_price,
            telegram_listed_gift_count: telegram_listed_gift_count,
            fragment_listed_gift_count: fragment_listed_gift_count,
            fragment_url: fragment_url,
            tdlib_type: "upgradedGiftValueInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
