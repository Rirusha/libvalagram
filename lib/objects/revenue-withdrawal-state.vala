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
 * Describes state of a revenue withdrawal
 */
public abstract class TDLib.RevenueWithdrawalState : Error {}

/**
 * Withdrawal is pending
 */
public class TDLib.RevenueWithdrawalStatePending : RevenueWithdrawalState {

    public RevenueWithdrawalStatePending () {
        Object (
            tdlib_type: "revenueWithdrawalStatePending",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Withdrawal succeeded
 */
public class TDLib.RevenueWithdrawalStateSucceeded : RevenueWithdrawalState {

    /**
     * Point in time (Unix timestamp) when the withdrawal was completed
     */
    public int32 date { get; construct set; }

    /**
     * The URL where the withdrawal transaction can be viewed
     */
    public string url { get; construct set; }

    public RevenueWithdrawalStateSucceeded (
        int32 date,
        string url
    ) {
        Object (
            date: date,
            url: url,
            tdlib_type: "revenueWithdrawalStateSucceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Withdrawal failed
 */
public class TDLib.RevenueWithdrawalStateFailed : RevenueWithdrawalState {

    public RevenueWithdrawalStateFailed () {
        Object (
            tdlib_type: "revenueWithdrawalStateFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
