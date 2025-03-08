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
 * Describes an option for gifting Telegram Premium to a user. Use
 * telegramPaymentPurposePremiumGift for out-of-store payments or
 * payments in Telegram Stars
 */
public class TDLib.PremiumGiftPaymentOption : Error {

    /**
     * ISO 4217 currency code for the payment
     */
    public string currency { get; construct set; }

    /**
     * The amount to pay, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * The alternative amount of Telegram Stars to pay; 0 if payment in
     * Telegram Stars is not possible
     */
    public int64 star_count { get; construct set; }

    /**
     * The discount associated with this option, as a percentage
     */
    public int32 discount_percentage { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active
     */
    public int32 month_count { get; construct set; }

    /**
     * Identifier of the store product associated with the option
     */
    public string store_product_id { get; construct set; }

    /**
     * A sticker to be shown along with the option; may be null if unknown
     */
    public Sticker? sticker { get; construct set; }

    public PremiumGiftPaymentOption (
        string currency,
        int64 amount,
        int64 star_count,
        int32 discount_percentage,
        int32 month_count,
        string store_product_id,
        Sticker? sticker
    ) {
        Object (
            currency: currency,
            amount: amount,
            star_count: star_count,
            discount_percentage: discount_percentage,
            month_count: month_count,
            store_product_id: store_product_id,
            sticker: sticker,
            tdlib_type: "premiumGiftPaymentOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
