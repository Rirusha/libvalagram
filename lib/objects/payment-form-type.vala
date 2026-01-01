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
 * Describes type of payment form
 */
public abstract class TDLib.PaymentFormType : Error {}

/**
 * The payment form is for a regular payment
 */
public class TDLib.PaymentFormTypeRegular : PaymentFormType {

    /**
     * Full information about the invoice
     */
    public Invoice invoice { get; construct set; }

    /**
     * User identifier of the payment provider bot
     */
    public int64 payment_provider_user_id { get; construct set; }

    /**
     * Information about the payment provider
     */
    public PaymentProvider payment_provider { get; construct set; }

    /**
     * The list of additional payment options
     */
    public Gee.ArrayList<PaymentOption?> additional_payment_options { get; construct set; default = new Gee.ArrayList<PaymentOption?> (); }

    /**
     * Saved server-side order information; may be null
     */
    public OrderInfo? saved_order_info { get; construct set; }

    /**
     * The list of saved payment credentials
     */
    public Gee.ArrayList<SavedCredentials?> saved_credentials { get; construct set; default = new Gee.ArrayList<SavedCredentials?> (); }

    /**
     * True, if the user can choose to save credentials
     */
    public bool can_save_credentials { get; construct set; }

    /**
     * True, if the user will be able to save credentials, if sets up a
     * 2-step verification password
     */
    public bool need_password { get; construct set; }

    public PaymentFormTypeRegular (
        Invoice invoice,
        int64 payment_provider_user_id,
        PaymentProvider payment_provider,
        Gee.ArrayList<PaymentOption?> additional_payment_options,
        OrderInfo? saved_order_info,
        Gee.ArrayList<SavedCredentials?> saved_credentials,
        bool can_save_credentials,
        bool need_password
    ) {
        Object (
            invoice: invoice,
            payment_provider_user_id: payment_provider_user_id,
            payment_provider: payment_provider,
            additional_payment_options: additional_payment_options,
            saved_order_info: saved_order_info,
            saved_credentials: saved_credentials,
            can_save_credentials: can_save_credentials,
            need_password: need_password,
            tdlib_type: "paymentFormTypeRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The payment form is for a payment in Telegram Stars
 */
public class TDLib.PaymentFormTypeStars : PaymentFormType {

    /**
     * Number of Telegram Stars that will be paid
     */
    public int64 star_count { get; construct set; }

    public PaymentFormTypeStars (
        int64 star_count
    ) {
        Object (
            star_count: star_count,
            tdlib_type: "paymentFormTypeStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The payment form is for a payment in Telegram Stars for subscription
 */
public class TDLib.PaymentFormTypeStarSubscription : PaymentFormType {

    /**
     * Information about subscription plan
     */
    public StarSubscriptionPricing pricing { get; construct set; }

    public PaymentFormTypeStarSubscription (
        StarSubscriptionPricing pricing
    ) {
        Object (
            pricing: pricing,
            tdlib_type: "paymentFormTypeStarSubscription",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
