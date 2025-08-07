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
 * Returns the list of Toncoin transactions of the current user
 */
public class TDLib.GetTonTransactions : TDObject {

    /**
     * Direction of the transactions to receive; pass null to get all
     * transactions
     */
    public TransactionDirection direction { get; construct set; }

    /**
     * Offset of the first transaction to return as received from the
     * previous request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of transactions to return
     */
    public int32 limit { get; construct set; }

    public GetTonTransactions (
        TransactionDirection direction,
        string offset,
        int32 limit
    ) {
        Object (
            direction: direction,
            offset: offset,
            limit: limit,
            tdlib_type: "getTonTransactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
