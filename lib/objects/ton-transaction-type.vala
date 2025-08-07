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
