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
 * Contains information about Telegram Stars earned by a user or a chat
 */
public class TDLib.StarRevenueStatus : Error {

    /**
     * Total Telegram Star amount earned
     */
    public StarAmount total_amount { get; construct set; }

    /**
     * The Telegram Star amount that isn't withdrawn yet
     */
    public StarAmount current_amount { get; construct set; }

    /**
     * The Telegram Star amount that is available for withdrawal
     */
    public StarAmount available_amount { get; construct set; }

    /**
     * True, if Telegram Stars can be withdrawn now or later
     */
    public bool withdrawal_enabled { get; construct set; }

    /**
     * Time left before the next withdrawal can be started, in seconds; 0 if
     * withdrawal can be started now
     */
    public int32 next_withdrawal_in { get; construct set; }

    public StarRevenueStatus (
        StarAmount total_amount,
        StarAmount current_amount,
        StarAmount available_amount,
        bool withdrawal_enabled,
        int32 next_withdrawal_in
    ) {
        Object (
            total_amount: total_amount,
            current_amount: current_amount,
            available_amount: available_amount,
            withdrawal_enabled: withdrawal_enabled,
            next_withdrawal_in: next_withdrawal_in,
            tdlib_type: "starRevenueStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
