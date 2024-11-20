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
 * Describes type of transaction for revenue earned from sponsored
 * messages in a chat
 */
public abstract class TDLib.ChatRevenueTransactionType : Error {}

/**
 * Describes earnings from sponsored messages in a chat in some time
 * frame
 */
public class TDLib.ChatRevenueTransactionTypeEarnings : ChatRevenueTransactionType {

    /**
     * Point in time (Unix timestamp) when the earnings started
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the earnings ended
     */
    public int32 end_date { get; construct set; }

    public ChatRevenueTransactionTypeEarnings (
        int32 start_date,
        int32 end_date
    ) {
        Object (
            start_date: start_date,
            end_date: end_date,
            tdlib_type: "chatRevenueTransactionTypeEarnings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a withdrawal of earnings
 */
public class TDLib.ChatRevenueTransactionTypeWithdrawal : ChatRevenueTransactionType {

    /**
     * Point in time (Unix timestamp) when the earnings withdrawal started
     */
    public int32 withdrawal_date { get; construct set; }

    /**
     * Name of the payment provider
     */
    public string provider { get; construct set; }

    /**
     * State of the withdrawal
     */
    public RevenueWithdrawalState state { get; construct set; }

    public ChatRevenueTransactionTypeWithdrawal (
        int32 withdrawal_date,
        string provider,
        RevenueWithdrawalState state
    ) {
        Object (
            withdrawal_date: withdrawal_date,
            provider: provider,
            state: state,
            tdlib_type: "chatRevenueTransactionTypeWithdrawal",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a refund for failed withdrawal of earnings
 */
public class TDLib.ChatRevenueTransactionTypeRefund : ChatRevenueTransactionType {

    /**
     * Point in time (Unix timestamp) when the transaction was refunded
     */
    public int32 refund_date { get; construct set; }

    /**
     * Name of the payment provider
     */
    public string provider { get; construct set; }

    public ChatRevenueTransactionTypeRefund (
        int32 refund_date,
        string provider
    ) {
        Object (
            refund_date: refund_date,
            provider: provider,
            tdlib_type: "chatRevenueTransactionTypeRefund",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
