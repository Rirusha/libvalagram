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
 * Describes an option for creating Telegram Star giveaway. Use
 * telegramPaymentPurposeStarGiveaway for out-of-store payments
 */
public class TDLib.StarGiveawayPaymentOption : Error {

    /**
     * ISO 4217 currency code for the payment
     */
    public string currency { get; construct set; }

    /**
     * The amount to pay, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Number of Telegram Stars that will be distributed among winners
     */
    public int64 star_count { get; construct set; }

    /**
     * Identifier of the store product associated with the option; may be
     * empty if none
     */
    public string store_product_id { get; construct set; }

    /**
     * Number of times the chat will be boosted for one year if the option is
     * chosen
     */
    public int32 yearly_boost_count { get; construct set; }

    /**
     * Allowed options for the number of giveaway winners
     */
    public Gee.ArrayList<StarGiveawayWinnerOption?> winner_options { get; construct set; default = new Gee.ArrayList<StarGiveawayWinnerOption?> (); }

    /**
     * True, if the option must be chosen by default
     */
    public bool is_default { get; construct set; }

    /**
     * True, if the option must be shown only in the full list of payment
     * options
     */
    public bool is_additional { get; construct set; }

    public StarGiveawayPaymentOption (
        string currency,
        int64 amount,
        int64 star_count,
        string store_product_id,
        int32 yearly_boost_count,
        Gee.ArrayList<StarGiveawayWinnerOption?> winner_options,
        bool is_default,
        bool is_additional
    ) {
        Object (
            currency: currency,
            amount: amount,
            star_count: star_count,
            store_product_id: store_product_id,
            yearly_boost_count: yearly_boost_count,
            winner_options: winner_options,
            is_default: is_default,
            is_additional: is_additional,
            tdlib_type: "starGiveawayPaymentOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
