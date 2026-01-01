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
 * Represents a transaction changing the amount of owned Telegram Stars
 */
public class TDLib.StarTransaction : Error {

    /**
     * Unique identifier of the transaction
     */
    public string id_ { get; construct set; }

    /**
     * The amount of added owned Telegram Stars; negative for outgoing
     * transactions
     */
    public StarAmount star_amount { get; construct set; }

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
    public StarTransactionType type_ { get; construct set; }

    public StarTransaction (
        string id_,
        StarAmount star_amount,
        bool is_refund,
        int32 date,
        StarTransactionType type_
    ) {
        Object (
            id_: id_,
            star_amount: star_amount,
            is_refund: is_refund,
            date: date,
            type_: type_,
            tdlib_type: "starTransaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
