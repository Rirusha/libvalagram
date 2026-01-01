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
 * Represents a transaction changing the amount of owned Toncoins
 */
public class TDLib.TonTransaction : Error {

    /**
     * Unique identifier of the transaction
     */
    public string id_ { get; construct set; }

    /**
     * The amount of added owned Toncoins; negative for outgoing transactions
     */
    public int64 ton_amount { get; construct set; }

    /**
     * True, if the transaction is a refund of a previous transaction
     */
    public bool is_refund { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the transaction was completed
     */
    public int32 date { get; construct set; }

    /**
     * Type of the transaction
     */
    public TonTransactionType type_ { get; construct set; }

    public TonTransaction (
        string id_,
        int64 ton_amount,
        bool is_refund,
        int32 date,
        TonTransactionType type_
    ) {
        Object (
            id_: id_,
            ton_amount: ton_amount,
            is_refund: is_refund,
            date: date,
            type_: type_,
            tdlib_type: "tonTransaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
