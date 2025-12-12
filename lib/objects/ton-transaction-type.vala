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
 * Describes type of transaction with Toncoins
 */
public abstract class TDLib.TonTransactionType : Error {}

/**
 * The transaction is a deposit of Toncoins from Fragment
 */
public class TDLib.TonTransactionTypeFragmentDeposit : TonTransactionType {

    /**
     * True, if the transaction is a gift from another user
     */
    public bool is_gift { get; construct set; }

    /**
     * The sticker to be shown in the transaction information; may be null if
     * unknown
     */
    public Sticker? sticker { get; construct set; }

    public TonTransactionTypeFragmentDeposit (
        bool is_gift,
        Sticker? sticker
    ) {
        Object (
            is_gift: is_gift,
            sticker: sticker,
            tdlib_type: "tonTransactionTypeFragmentDeposit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a payment for a suggested post
 */
public class TDLib.TonTransactionTypeSuggestedPostPayment : TonTransactionType {

    /**
     * Identifier of the channel chat that posted the post
     */
    public int64 chat_id { get; construct set; }

    public TonTransactionTypeSuggestedPostPayment (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "tonTransactionTypeSuggestedPostPayment",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of an upgraded gift for some user or
 * channel
 */
public class TDLib.TonTransactionTypeUpgradedGiftPurchase : TonTransactionType {

    /**
     * Identifier of the user that sold the gift
     */
    public int64 user_id { get; construct set; }

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    public TonTransactionTypeUpgradedGiftPurchase (
        int64 user_id,
        UpgradedGift gift
    ) {
        Object (
            user_id: user_id,
            gift: gift,
            tdlib_type: "tonTransactionTypeUpgradedGiftPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of an upgraded gift
 */
public class TDLib.TonTransactionTypeUpgradedGiftSale : TonTransactionType {

    /**
     * Identifier of the user that bought the gift
     */
    public int64 user_id { get; construct set; }

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    /**
     * The number of Toncoins received by the Telegram for each 1000 Toncoins
     * received by the seller of the gift
     */
    public int32 commission_per_mille { get; construct set; }

    /**
     * The amount of Toncoins that were received by the Telegram; in the
     * smallest units of the currency
     */
    public int64 commission_toncoin_amount { get; construct set; }

    public TonTransactionTypeUpgradedGiftSale (
        int64 user_id,
        UpgradedGift gift,
        int32 commission_per_mille,
        int64 commission_toncoin_amount
    ) {
        Object (
            user_id: user_id,
            gift: gift,
            commission_per_mille: commission_per_mille,
            commission_toncoin_amount: commission_toncoin_amount,
            tdlib_type: "tonTransactionTypeUpgradedGiftSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction of an unsupported type
 */
public class TDLib.TonTransactionTypeUnsupported : TonTransactionType {

    public TonTransactionTypeUnsupported () {
        Object (
            tdlib_type: "tonTransactionTypeUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
