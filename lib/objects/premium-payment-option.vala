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
 * Describes an option for buying Telegram Premium to a user
 */
public class TDLib.PremiumPaymentOption : Error {

    /**
     * ISO 4217 currency code for Telegram Premium subscription payment
     */
    public string currency { get; construct set; }

    /**
     * The amount to pay, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * The discount associated with this option, as a percentage
     */
    public int32 discount_percentage { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active. Use
     * {@link Client.get_premium_info_sticker} to get the sticker to be used
     * as representation of the Telegram Premium subscription
     */
    public int32 month_count { get; construct set; }

    /**
     * Identifier of the store product associated with the option
     */
    public string store_product_id { get; construct set; }

    /**
     * An internal link to be opened for buying Telegram Premium to the user
     * if store payment isn't possible; may be null if direct payment isn't
     * available
     */
    public InternalLinkType? payment_link { get; construct set; }

    public PremiumPaymentOption (
        string currency,
        int64 amount,
        int32 discount_percentage,
        int32 month_count,
        string store_product_id,
        InternalLinkType? payment_link
    ) {
        Object (
            currency: currency,
            amount: amount,
            discount_percentage: discount_percentage,
            month_count: month_count,
            store_product_id: store_product_id,
            payment_link: payment_link,
            tdlib_type: "premiumPaymentOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
