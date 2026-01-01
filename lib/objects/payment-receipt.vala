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
 * Contains information about a successful payment
 */
public class TDLib.PaymentReceipt : Error {

    /**
     * Information about the product
     */
    public ProductInfo product_info { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the payment was made
     */
    public int32 date { get; construct set; }

    /**
     * User identifier of the seller bot
     */
    public int64 seller_bot_user_id { get; construct set; }

    /**
     * Type of the payment receipt
     */
    public PaymentReceiptType type_ { get; construct set; }

    public PaymentReceipt (
        ProductInfo product_info,
        int32 date,
        int64 seller_bot_user_id,
        PaymentReceiptType type_
    ) {
        Object (
            product_info: product_info,
            date: date,
            seller_bot_user_id: seller_bot_user_id,
            type_: type_,
            tdlib_type: "paymentReceipt",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
