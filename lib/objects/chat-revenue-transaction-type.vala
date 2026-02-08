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
 * Describes type of transaction for revenue earned from sponsored
 * messages in a chat
 */
public abstract class TDLib.ChatRevenueTransactionType : Error {}

/**
 * Describes an unsupported transaction
 */
public class TDLib.ChatRevenueTransactionTypeUnsupported : ChatRevenueTransactionType {

    public ChatRevenueTransactionTypeUnsupported () {
        Object (
            tdlib_type: "chatRevenueTransactionTypeUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes earnings from sponsored messages in a chat in some time
 * frame
 */
public class TDLib.ChatRevenueTransactionTypeSponsoredMessageEarnings : ChatRevenueTransactionType {

    /**
     * Point in time (Unix timestamp) when the earnings started
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the earnings ended
     */
    public int32 end_date { get; construct set; }

    public ChatRevenueTransactionTypeSponsoredMessageEarnings (
        int32 start_date,
        int32 end_date
    ) {
        Object (
            start_date: start_date,
            end_date: end_date,
            tdlib_type: "chatRevenueTransactionTypeSponsoredMessageEarnings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes earnings from a published suggested post
 */
public class TDLib.ChatRevenueTransactionTypeSuggestedPostEarnings : ChatRevenueTransactionType {

    /**
     * Identifier of the user who paid for the suggested post
     */
    public int64 user_id { get; construct set; }

    public ChatRevenueTransactionTypeSuggestedPostEarnings (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "chatRevenueTransactionTypeSuggestedPostEarnings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a withdrawal of earnings through Fragment
 */
public class TDLib.ChatRevenueTransactionTypeFragmentWithdrawal : ChatRevenueTransactionType {

    /**
     * Point in time (Unix timestamp) when the earnings withdrawal started
     */
    public int32 withdrawal_date { get; construct set; }

    /**
     * State of the withdrawal
     */
    public RevenueWithdrawalState state { get; construct set; }

    public ChatRevenueTransactionTypeFragmentWithdrawal (
        int32 withdrawal_date,
        RevenueWithdrawalState state
    ) {
        Object (
            withdrawal_date: withdrawal_date,
            state: state,
            tdlib_type: "chatRevenueTransactionTypeFragmentWithdrawal",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a refund for failed withdrawal of earnings through Fragment
 */
public class TDLib.ChatRevenueTransactionTypeFragmentRefund : ChatRevenueTransactionType {

    /**
     * Point in time (Unix timestamp) when the transaction was refunded
     */
    public int32 refund_date { get; construct set; }

    public ChatRevenueTransactionTypeFragmentRefund (
        int32 refund_date
    ) {
        Object (
            refund_date: refund_date,
            tdlib_type: "chatRevenueTransactionTypeFragmentRefund",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
