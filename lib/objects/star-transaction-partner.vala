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
 * Describes source or recipient of a transaction with Telegram Stars
 */
public abstract class TDLib.StarTransactionPartner : Error {}

/**
 * The transaction is a transaction with Telegram through a bot
 */
public class TDLib.StarTransactionPartnerTelegram : StarTransactionPartner {

    public StarTransactionPartnerTelegram () {
        Object (
            tdlib_type: "starTransactionPartnerTelegram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with App Store
 */
public class TDLib.StarTransactionPartnerAppStore : StarTransactionPartner {

    public StarTransactionPartnerAppStore () {
        Object (
            tdlib_type: "starTransactionPartnerAppStore",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with Google Play
 */
public class TDLib.StarTransactionPartnerGooglePlay : StarTransactionPartner {

    public StarTransactionPartnerGooglePlay () {
        Object (
            tdlib_type: "starTransactionPartnerGooglePlay",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with Fragment
 */
public class TDLib.StarTransactionPartnerFragment : StarTransactionPartner {

    /**
     * State of the withdrawal; may be null for refunds from Fragment or for
     * Telegram Stars bought on Fragment
     */
    public RevenueWithdrawalState? withdrawal_state { get; construct set; }

    public StarTransactionPartnerFragment (
        RevenueWithdrawalState? withdrawal_state
    ) {
        Object (
            withdrawal_state: withdrawal_state,
            tdlib_type: "starTransactionPartnerFragment",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with Telegram Ad platform
 */
public class TDLib.StarTransactionPartnerTelegramAds : StarTransactionPartner {

    public StarTransactionPartnerTelegramAds () {
        Object (
            tdlib_type: "starTransactionPartnerTelegramAds",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with Telegram for API usage
 */
public class TDLib.StarTransactionPartnerTelegramApi : StarTransactionPartner {

    /**
     * The number of billed requests
     */
    public int32 request_count { get; construct set; }

    public StarTransactionPartnerTelegramApi (
        int32 request_count
    ) {
        Object (
            request_count: request_count,
            tdlib_type: "starTransactionPartnerTelegramApi",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with a bot
 */
public class TDLib.StarTransactionPartnerBot : StarTransactionPartner {

    /**
     * Identifier of the bot
     */
    public int64 user_id { get; construct set; }

    /**
     * Purpose of the transaction
     */
    public BotTransactionPurpose purpose { get; construct set; }

    public StarTransactionPartnerBot (
        int64 user_id,
        BotTransactionPurpose purpose
    ) {
        Object (
            user_id: user_id,
            purpose: purpose,
            tdlib_type: "starTransactionPartnerBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with a business account
 */
public class TDLib.StarTransactionPartnerBusiness : StarTransactionPartner {

    /**
     * Identifier of the business account user
     */
    public int64 user_id { get; construct set; }

    /**
     * The bought media if the transaction wasn't refunded
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    public StarTransactionPartnerBusiness (
        int64 user_id,
        Gee.ArrayList<PaidMedia?> media
    ) {
        Object (
            user_id: user_id,
            media: media,
            tdlib_type: "starTransactionPartnerBusiness",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with a supergroup or a channel chat
 */
public class TDLib.StarTransactionPartnerChat : StarTransactionPartner {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Purpose of the transaction
     */
    public ChatTransactionPurpose purpose { get; construct set; }

    public StarTransactionPartnerChat (
        int64 chat_id,
        ChatTransactionPurpose purpose
    ) {
        Object (
            chat_id: chat_id,
            purpose: purpose,
            tdlib_type: "starTransactionPartnerChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with another user
 */
public class TDLib.StarTransactionPartnerUser : StarTransactionPartner {

    /**
     * Identifier of the user; 0 if the user was anonymous
     */
    public int64 user_id { get; construct set; }

    /**
     * Purpose of the transaction
     */
    public UserTransactionPurpose purpose { get; construct set; }

    public StarTransactionPartnerUser (
        int64 user_id,
        UserTransactionPurpose purpose
    ) {
        Object (
            user_id: user_id,
            purpose: purpose,
            tdlib_type: "starTransactionPartnerUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction with unknown partner
 */
public class TDLib.StarTransactionPartnerUnsupported : StarTransactionPartner {

    public StarTransactionPartnerUnsupported () {
        Object (
            tdlib_type: "starTransactionPartnerUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
