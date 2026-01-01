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
 * Informs server about an in-store purchase of Telegram Premium before
 * authorization. Works only when the current authorization state is
 * authorizationStateWaitPremiumPurchase
 */
public class TDLib.SetAuthenticationPremiumPurchaseTransaction : TDObject {

    /**
     * Information about the transaction
     */
    public StoreTransaction transaction { get; construct set; }

    /**
     * Pass true if this is a restore of a Telegram Premium purchase; only
     * for App Store
     */
    public bool is_restore { get; construct set; }

    /**
     * ISO 4217 currency code of the payment currency
     */
    public string currency { get; construct set; }

    /**
     * Paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    public SetAuthenticationPremiumPurchaseTransaction (
        StoreTransaction transaction,
        bool is_restore,
        string currency,
        int64 amount
    ) {
        Object (
            transaction: transaction,
            is_restore: is_restore,
            currency: currency,
            amount: amount,
            tdlib_type: "setAuthenticationPremiumPurchaseTransaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
