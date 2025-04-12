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
 * Checks whether an in-store purchase of Telegram Premium is possible
 * before authorization. Works only when the current authorization state
 * is authorizationStateWaitPremiumPurchase
 */
public class TDLib.CheckAuthenticationPremiumPurchase : TDObject {

    /**
     * ISO 4217 currency code of the payment currency
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    public CheckAuthenticationPremiumPurchase (
        string currency,
        int64 amount
    ) {
        Object (
            currency: currency,
            amount: amount,
            tdlib_type: "checkAuthenticationPremiumPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
