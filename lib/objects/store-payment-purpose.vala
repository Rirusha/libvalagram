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
 * Describes a purpose of an in-store payment
 */
public abstract class TDLib.StorePaymentPurpose : Error {}

/**
 * The user subscribing to Telegram Premium
 */
public class TDLib.StorePaymentPurposePremiumSubscription : StorePaymentPurpose {

    /**
     * Pass true if this is a restore of a Telegram Premium purchase; only
     * for App Store
     */
    public bool is_restore { get; construct set; }

    /**
     * Pass true if this is an upgrade from a monthly subscription to early
     * subscription; only for App Store
     */
    public bool is_upgrade { get; construct set; }

    public StorePaymentPurposePremiumSubscription (
        bool is_restore,
        bool is_upgrade
    ) {
        Object (
            is_restore: is_restore,
            is_upgrade: is_upgrade,
            tdlib_type: "storePaymentPurposePremiumSubscription",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user creating Telegram Premium gift codes for other users
 */
public class TDLib.StorePaymentPurposePremiumGiftCodes : StorePaymentPurpose {

    /**
     * Identifier of the supergroup or channel chat, which will be
     * automatically boosted by the users for duration of the Premium
     * subscription and which is administered by the user; 0 if none
     */
    public int64 boosted_chat_id { get; construct set; }

    /**
     * ISO 4217 currency code of the payment currency
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Identifiers of the users which can activate the gift codes
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Text to show along with the gift codes;
     * 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
     * Underline, Strikethrough, Spoiler, and CustomEmoji entities are
     * allowed
     */
    public FormattedText text { get; construct set; }

    public StorePaymentPurposePremiumGiftCodes (
        int64 boosted_chat_id,
        string currency,
        int64 amount,
        Gee.ArrayList<int64?> user_ids,
        FormattedText text
    ) {
        Object (
            boosted_chat_id: boosted_chat_id,
            currency: currency,
            amount: amount,
            user_ids: user_ids,
            text: text,
            tdlib_type: "storePaymentPurposePremiumGiftCodes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user creating a Telegram Premium giveaway
 */
public class TDLib.StorePaymentPurposePremiumGiveaway : StorePaymentPurpose {

    /**
     * Giveaway parameters
     */
    public GiveawayParameters parameters { get; construct set; }

    /**
     * ISO 4217 currency code of the payment currency
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    public StorePaymentPurposePremiumGiveaway (
        GiveawayParameters parameters,
        string currency,
        int64 amount
    ) {
        Object (
            parameters: parameters,
            currency: currency,
            amount: amount,
            tdlib_type: "storePaymentPurposePremiumGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user creating a Telegram Star giveaway
 */
public class TDLib.StorePaymentPurposeStarGiveaway : StorePaymentPurpose {

    /**
     * Giveaway parameters
     */
    public GiveawayParameters parameters { get; construct set; }

    /**
     * ISO 4217 currency code of the payment currency
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * The number of users to receive Telegram Stars
     */
    public int32 winner_count { get; construct set; }

    /**
     * The number of Telegram Stars to be distributed through the giveaway
     */
    public int64 star_count { get; construct set; }

    public StorePaymentPurposeStarGiveaway (
        GiveawayParameters parameters,
        string currency,
        int64 amount,
        int32 winner_count,
        int64 star_count
    ) {
        Object (
            parameters: parameters,
            currency: currency,
            amount: amount,
            winner_count: winner_count,
            star_count: star_count,
            tdlib_type: "storePaymentPurposeStarGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user buying Telegram Stars
 */
public class TDLib.StorePaymentPurposeStars : StorePaymentPurpose {

    /**
     * ISO 4217 currency code of the payment currency
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Number of bought Telegram Stars
     */
    public int64 star_count { get; construct set; }

    public StorePaymentPurposeStars (
        string currency,
        int64 amount,
        int64 star_count
    ) {
        Object (
            currency: currency,
            amount: amount,
            star_count: star_count,
            tdlib_type: "storePaymentPurposeStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user buying Telegram Stars for other users
 */
public class TDLib.StorePaymentPurposeGiftedStars : StorePaymentPurpose {

    /**
     * Identifier of the user to which Telegram Stars are gifted
     */
    public int64 user_id { get; construct set; }

    /**
     * ISO 4217 currency code of the payment currency
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Number of bought Telegram Stars
     */
    public int64 star_count { get; construct set; }

    public StorePaymentPurposeGiftedStars (
        int64 user_id,
        string currency,
        int64 amount,
        int64 star_count
    ) {
        Object (
            user_id: user_id,
            currency: currency,
            amount: amount,
            star_count: star_count,
            tdlib_type: "storePaymentPurposeGiftedStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
