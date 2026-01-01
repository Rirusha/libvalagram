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
 * Product invoice
 */
public class TDLib.Invoice : Error {

    /**
     * ISO 4217 currency code
     */
    public string currency { get; construct set; }

    /**
     * A list of objects used to calculate the total price of the product
     */
    public Gee.ArrayList<LabeledPricePart?> price_parts { get; construct set; default = new Gee.ArrayList<LabeledPricePart?> (); }

    /**
     * The number of seconds between consecutive Telegram Star debiting for
     * subscription invoices; 0 if the invoice doesn't create subscription
     */
    public int32 subscription_period { get; construct set; }

    /**
     * The maximum allowed amount of tip in the smallest units of the
     * currency
     */
    public int64 max_tip_amount { get; construct set; }

    /**
     * Suggested amounts of tip in the smallest units of the currency
     */
    public Gee.ArrayList<int64?> suggested_tip_amounts { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * An HTTP URL with terms of service for recurring payments. If
     * non-empty, the invoice payment will result in recurring payments and
     * the user must accept the terms of service before allowed to pay
     */
    public string recurring_payment_terms_of_service_url { get; construct set; }

    /**
     * An HTTP URL with terms of service for non-recurring payments. If
     * non-empty, then the user must accept the terms of service before
     * allowed to pay
     */
    public string terms_of_service_url { get; construct set; }

    /**
     * True, if the payment is a test payment
     */
    public bool is_test { get; construct set; }

    /**
     * True, if the user's name is needed for payment
     */
    public bool need_name { get; construct set; }

    /**
     * True, if the user's phone number is needed for payment
     */
    public bool need_phone_number { get; construct set; }

    /**
     * True, if the user's email address is needed for payment
     */
    public bool need_email_address { get; construct set; }

    /**
     * True, if the user's shipping address is needed for payment
     */
    public bool need_shipping_address { get; construct set; }

    /**
     * True, if the user's phone number will be sent to the provider
     */
    public bool send_phone_number_to_provider { get; construct set; }

    /**
     * True, if the user's email address will be sent to the provider
     */
    public bool send_email_address_to_provider { get; construct set; }

    /**
     * True, if the total price depends on the shipping method
     */
    public bool is_flexible { get; construct set; }

    public Invoice (
        string currency,
        Gee.ArrayList<LabeledPricePart?> price_parts,
        int32 subscription_period,
        int64 max_tip_amount,
        Gee.ArrayList<int64?> suggested_tip_amounts,
        string recurring_payment_terms_of_service_url,
        string terms_of_service_url,
        bool is_test,
        bool need_name,
        bool need_phone_number,
        bool need_email_address,
        bool need_shipping_address,
        bool send_phone_number_to_provider,
        bool send_email_address_to_provider,
        bool is_flexible
    ) {
        Object (
            currency: currency,
            price_parts: price_parts,
            subscription_period: subscription_period,
            max_tip_amount: max_tip_amount,
            suggested_tip_amounts: suggested_tip_amounts,
            recurring_payment_terms_of_service_url: recurring_payment_terms_of_service_url,
            terms_of_service_url: terms_of_service_url,
            is_test: is_test,
            need_name: need_name,
            need_phone_number: need_phone_number,
            need_email_address: need_email_address,
            need_shipping_address: need_shipping_address,
            send_phone_number_to_provider: send_phone_number_to_provider,
            send_email_address_to_provider: send_email_address_to_provider,
            is_flexible: is_flexible,
            tdlib_type: "invoice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
