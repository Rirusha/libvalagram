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
    public int64 star_count { get; construct set; }

    /**
     * True, if the transaction is a refund of a previous transaction
     */
    public bool is_refund { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the transaction was completed
     */
    public int32 date { get; construct set; }

    /**
     * Source of the incoming transaction, or its recipient for outgoing
     * transactions
     */
    public StarTransactionPartner partner { get; construct set; }

    public StarTransaction (
        string id_,
        int64 star_count,
        bool is_refund,
        int32 date,
        StarTransactionPartner partner
    ) {
        Object (
            id_: id_,
            star_count: star_count,
            is_refund: is_refund,
            date: date,
            partner: partner,
            tdlib_type: "starTransaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
