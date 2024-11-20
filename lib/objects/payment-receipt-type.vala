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
 * Describes type of successful payment
 */
public abstract class TDLib.PaymentReceiptType : Error {}

/**
 * The payment was done using a third-party payment provider
 */
public class TDLib.PaymentReceiptTypeRegular : PaymentReceiptType {

    /**
     * User identifier of the payment provider bot
     */
    public int64 payment_provider_user_id { get; construct set; }

    /**
     * Information about the invoice
     */
    public Invoice invoice { get; construct set; }

    /**
     * Order information; may be null
     */
    public OrderInfo? order_info { get; construct set; }

    /**
     * Chosen shipping option; may be null
     */
    public ShippingOption? shipping_option { get; construct set; }

    /**
     * Title of the saved credentials chosen by the buyer
     */
    public string credentials_title { get; construct set; }

    /**
     * The amount of tip chosen by the buyer in the smallest units of the
     * currency
     */
    public int64 tip_amount { get; construct set; }

    public PaymentReceiptTypeRegular (
        int64 payment_provider_user_id,
        Invoice invoice,
        OrderInfo? order_info,
        ShippingOption? shipping_option,
        string credentials_title,
        int64 tip_amount
    ) {
        Object (
            payment_provider_user_id: payment_provider_user_id,
            invoice: invoice,
            order_info: order_info,
            shipping_option: shipping_option,
            credentials_title: credentials_title,
            tip_amount: tip_amount,
            tdlib_type: "paymentReceiptTypeRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The payment was done using Telegram Stars
 */
public class TDLib.PaymentReceiptTypeStars : PaymentReceiptType {

    /**
     * Number of Telegram Stars that were paid
     */
    public int64 star_count { get; construct set; }

    /**
     * Unique identifier of the transaction that can be used to dispute it
     */
    public string transaction_id { get; construct set; }

    public PaymentReceiptTypeStars (
        int64 star_count,
        string transaction_id
    ) {
        Object (
            star_count: star_count,
            transaction_id: transaction_id,
            tdlib_type: "paymentReceiptTypeStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
