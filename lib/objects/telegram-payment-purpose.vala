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
 * Describes a purpose of a payment toward Telegram
 */
public abstract class TDLib.TelegramPaymentPurpose : Error {}

/**
 * The user gifting Telegram Premium to another user
 */
public class TDLib.TelegramPaymentPurposePremiumGift : TelegramPaymentPurpose {

    /**
     * ISO 4217 currency code of the payment currency, or "XTR" for payments
     * in Telegram Stars
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Identifier of the user which will receive Telegram Premium
     */
    public int64 user_id { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active for
     * the user
     */
    public int32 month_count { get; construct set; }

    /**
     * Text to show to the user receiving Telegram Premium;
     * 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
     * Underline, Strikethrough, Spoiler, and CustomEmoji entities are
     * allowed
     */
    public FormattedText text { get; construct set; }

    public TelegramPaymentPurposePremiumGift (
        string currency,
        int64 amount,
        int64 user_id,
        int32 month_count,
        FormattedText text
    ) {
        Object (
            currency: currency,
            amount: amount,
            user_id: user_id,
            month_count: month_count,
            text: text,
            tdlib_type: "telegramPaymentPurposePremiumGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user boosting a chat by creating Telegram Premium gift codes for
 * other users
 */
public class TDLib.TelegramPaymentPurposePremiumGiftCodes : TelegramPaymentPurpose {

    /**
     * Identifier of the supergroup or channel chat, which will be
     * automatically boosted by the users for duration of the Premium
     * subscription and which is administered by the user
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
     * Number of months the Telegram Premium subscription will be active for
     * the users
     */
    public int32 month_count { get; construct set; }

    /**
     * Text to show along with the gift codes;
     * 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
     * Underline, Strikethrough, Spoiler, and CustomEmoji entities are
     * allowed
     */
    public FormattedText text { get; construct set; }

    public TelegramPaymentPurposePremiumGiftCodes (
        int64 boosted_chat_id,
        string currency,
        int64 amount,
        Gee.ArrayList<int64?> user_ids,
        int32 month_count,
        FormattedText text
    ) {
        Object (
            boosted_chat_id: boosted_chat_id,
            currency: currency,
            amount: amount,
            user_ids: user_ids,
            month_count: month_count,
            text: text,
            tdlib_type: "telegramPaymentPurposePremiumGiftCodes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user creating a Telegram Premium giveaway
 */
public class TDLib.TelegramPaymentPurposePremiumGiveaway : TelegramPaymentPurpose {

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
     * Number of users which will be able to activate the gift codes
     */
    public int32 winner_count { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active for
     * the users
     */
    public int32 month_count { get; construct set; }

    public TelegramPaymentPurposePremiumGiveaway (
        GiveawayParameters parameters,
        string currency,
        int64 amount,
        int32 winner_count,
        int32 month_count
    ) {
        Object (
            parameters: parameters,
            currency: currency,
            amount: amount,
            winner_count: winner_count,
            month_count: month_count,
            tdlib_type: "telegramPaymentPurposePremiumGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user buying Telegram Stars
 */
public class TDLib.TelegramPaymentPurposeStars : TelegramPaymentPurpose {

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

    /**
     * Identifier of the chat that is supposed to receive the Telegram Stars;
     * pass 0 if none
     */
    public int64 chat_id { get; construct set; }

    public TelegramPaymentPurposeStars (
        string currency,
        int64 amount,
        int64 star_count,
        int64 chat_id
    ) {
        Object (
            currency: currency,
            amount: amount,
            star_count: star_count,
            chat_id: chat_id,
            tdlib_type: "telegramPaymentPurposeStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user buying Telegram Stars for other users
 */
public class TDLib.TelegramPaymentPurposeGiftedStars : TelegramPaymentPurpose {

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

    public TelegramPaymentPurposeGiftedStars (
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
            tdlib_type: "telegramPaymentPurposeGiftedStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user creating a Telegram Star giveaway
 */
public class TDLib.TelegramPaymentPurposeStarGiveaway : TelegramPaymentPurpose {

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

    public TelegramPaymentPurposeStarGiveaway (
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
            tdlib_type: "telegramPaymentPurposeStarGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user joins a chat and subscribes to regular payments in Telegram
 * Stars
 */
public class TDLib.TelegramPaymentPurposeJoinChat : TelegramPaymentPurpose {

    /**
     * Invite link to use
     */
    public string invite_link { get; construct set; }

    public TelegramPaymentPurposeJoinChat (
        string invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "telegramPaymentPurposeJoinChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
