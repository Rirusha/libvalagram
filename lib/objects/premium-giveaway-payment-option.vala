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
 * Describes an option for creating of Telegram Premium giveaway or
 * manual distribution of Telegram Premium among chat members. Use
 * telegramPaymentPurposePremiumGiftCodes or
 * telegramPaymentPurposePremiumGiveaway for out-of-store payments
 */
public class TDLib.PremiumGiveawayPaymentOption : Error {

    /**
     * ISO 4217 currency code for Telegram Premium gift code payment
     */
    public string currency { get; construct set; }

    /**
     * The amount to pay, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Number of users which will be able to activate the gift codes
     */
    public int32 winner_count { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active
     */
    public int32 month_count { get; construct set; }

    /**
     * Identifier of the store product associated with the option; may be
     * empty if none
     */
    public string store_product_id { get; construct set; }

    /**
     * Number of times the store product must be paid
     */
    public int32 store_product_quantity { get; construct set; }

    public PremiumGiveawayPaymentOption (
        string currency,
        int64 amount,
        int32 winner_count,
        int32 month_count,
        string store_product_id,
        int32 store_product_quantity
    ) {
        Object (
            currency: currency,
            amount: amount,
            winner_count: winner_count,
            month_count: month_count,
            store_product_id: store_product_id,
            store_product_quantity: store_product_quantity,
            tdlib_type: "premiumGiveawayPaymentOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
