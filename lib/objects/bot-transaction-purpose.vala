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
 * Describes purpose of a transaction with a bot
 */
public abstract class TDLib.BotTransactionPurpose : Error {}

/**
 * Paid media were bought
 */
public class TDLib.BotTransactionPurposePaidMedia : BotTransactionPurpose {

    /**
     * The bought media if the transaction wasn't refunded
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    /**
     * Bot-provided payload; for bots only
     */
    public string payload { get; construct set; }

    public BotTransactionPurposePaidMedia (
        Gee.ArrayList<PaidMedia?> media,
        string payload
    ) {
        Object (
            media: media,
            payload: payload,
            tdlib_type: "botTransactionPurposePaidMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * User bought a product from the bot
 */
public class TDLib.BotTransactionPurposeInvoicePayment : BotTransactionPurpose {

    /**
     * Information about the bought product; may be null if not applicable
     */
    public ProductInfo? product_info { get; construct set; }

    /**
     * Invoice payload; for bots only
     */
    public Bytes invoice_payload { get; construct set; }

    public BotTransactionPurposeInvoicePayment (
        ProductInfo? product_info,
        Bytes invoice_payload
    ) {
        Object (
            product_info: product_info,
            invoice_payload: invoice_payload,
            tdlib_type: "botTransactionPurposeInvoicePayment",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * User bought a subscription in a bot or a business account
 */
public class TDLib.BotTransactionPurposeSubscription : BotTransactionPurpose {

    /**
     * The number of seconds between consecutive Telegram Star debiting
     */
    public int32 period { get; construct set; }

    /**
     * Information about the bought subscription; may be null if not
     * applicable
     */
    public ProductInfo? product_info { get; construct set; }

    /**
     * Invoice payload; for bots only
     */
    public Bytes invoice_payload { get; construct set; }

    public BotTransactionPurposeSubscription (
        int32 period,
        ProductInfo? product_info,
        Bytes invoice_payload
    ) {
        Object (
            period: period,
            product_info: product_info,
            invoice_payload: invoice_payload,
            tdlib_type: "botTransactionPurposeSubscription",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
