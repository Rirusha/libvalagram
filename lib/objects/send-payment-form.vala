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
 * Sends a filled-out payment form to the bot for final verification
 */
public class TDLib.SendPaymentForm : TDObject {

    /**
     * The invoice
     */
    public InputInvoice input_invoice { get; construct set; }

    /**
     * Payment form identifier returned by {@link Client.get_payment_form}
     */
    public int64 payment_form_id { get; construct set; }

    /**
     * Identifier returned by {@link Client.validate_order_info} or an empty
     * string
     */
    public string order_info_id { get; construct set; }

    /**
     * Identifier of a chosen shipping option, if applicable
     */
    public string shipping_option_id { get; construct set; }

    /**
     * The credentials chosen by user for payment; pass null for a payment in
     * Telegram Stars
     */
    public InputCredentials credentials { get; construct set; }

    /**
     * Chosen by the user amount of tip in the smallest units of the currency
     */
    public int64 tip_amount { get; construct set; }

    public SendPaymentForm (
        InputInvoice input_invoice,
        int64 payment_form_id,
        string order_info_id,
        string shipping_option_id,
        InputCredentials credentials,
        int64 tip_amount
    ) {
        Object (
            input_invoice: input_invoice,
            payment_form_id: payment_form_id,
            order_info_id: order_info_id,
            shipping_option_id: shipping_option_id,
            credentials: credentials,
            tip_amount: tip_amount,
            tdlib_type: "sendPaymentForm",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
