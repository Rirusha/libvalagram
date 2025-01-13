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
 * Contains information about revenue earned from sponsored messages in a
 * chat
 */
public class TDLib.ChatRevenueAmount : Error {

    /**
     * Cryptocurrency in which revenue is calculated
     */
    public string cryptocurrency { get; construct set; }

    /**
     * Total amount of the cryptocurrency earned, in the smallest units of
     * the cryptocurrency
     */
    public int64 total_amount { get; construct set; }

    /**
     * Amount of the cryptocurrency that isn't withdrawn yet, in the smallest
     * units of the cryptocurrency
     */
    public int64 balance_amount { get; construct set; }

    /**
     * Amount of the cryptocurrency available for withdrawal, in the smallest
     * units of the cryptocurrency
     */
    public int64 available_amount { get; construct set; }

    /**
     * True, if Telegram Stars can be withdrawn now or later
     */
    public bool withdrawal_enabled { get; construct set; }

    public ChatRevenueAmount (
        string cryptocurrency,
        int64 total_amount,
        int64 balance_amount,
        int64 available_amount,
        bool withdrawal_enabled
    ) {
        Object (
            cryptocurrency: cryptocurrency,
            total_amount: total_amount,
            balance_amount: balance_amount,
            available_amount: available_amount,
            withdrawal_enabled: withdrawal_enabled,
            tdlib_type: "chatRevenueAmount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
