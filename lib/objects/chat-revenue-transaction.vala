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
 * Contains a chat revenue transactions
 */
public class TDLib.ChatRevenueTransaction : Error {

    /**
     * Cryptocurrency in which revenue is calculated
     */
    public string cryptocurrency { get; construct set; }

    /**
     * The withdrawn amount, in the smallest units of the cryptocurrency
     */
    public int64 cryptocurrency_amount { get; construct set; }

    /**
     * Type of the transaction
     */
    public ChatRevenueTransactionType type_ { get; construct set; }

    public ChatRevenueTransaction (
        string cryptocurrency,
        int64 cryptocurrency_amount,
        ChatRevenueTransactionType type_
    ) {
        Object (
            cryptocurrency: cryptocurrency,
            cryptocurrency_amount: cryptocurrency_amount,
            type_: type_,
            tdlib_type: "chatRevenueTransaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
