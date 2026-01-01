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
 * Contains information about a payment provider
 */
public abstract class TDLib.PaymentProvider : Error {}

/**
 * Smart Glocal payment provider
 */
public class TDLib.PaymentProviderSmartGlocal : PaymentProvider {

    /**
     * Public payment token
     */
    public string public_token { get; construct set; }

    /**
     * URL for sending card tokenization requests
     */
    public string tokenize_url { get; construct set; }

    public PaymentProviderSmartGlocal (
        string public_token,
        string tokenize_url
    ) {
        Object (
            public_token: public_token,
            tokenize_url: tokenize_url,
            tdlib_type: "paymentProviderSmartGlocal",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Stripe payment provider
 */
public class TDLib.PaymentProviderStripe : PaymentProvider {

    /**
     * Stripe API publishable key
     */
    public string publishable_key { get; construct set; }

    /**
     * True, if the user country must be provided
     */
    public bool need_country { get; construct set; }

    /**
     * True, if the user ZIP/postal code must be provided
     */
    public bool need_postal_code { get; construct set; }

    /**
     * True, if the cardholder name must be provided
     */
    public bool need_cardholder_name { get; construct set; }

    public PaymentProviderStripe (
        string publishable_key,
        bool need_country,
        bool need_postal_code,
        bool need_cardholder_name
    ) {
        Object (
            publishable_key: publishable_key,
            need_country: need_country,
            need_postal_code: need_postal_code,
            need_cardholder_name: need_cardholder_name,
            tdlib_type: "paymentProviderStripe",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some other payment provider, for which a web payment form must be
 * shown
 */
public class TDLib.PaymentProviderOther : PaymentProvider {

    /**
     * Payment form URL
     */
    public string url { get; construct set; }

    public PaymentProviderOther (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "paymentProviderOther",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
