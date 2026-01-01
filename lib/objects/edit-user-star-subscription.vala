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
 * Cancels or re-enables Telegram Star subscription for a user; for bots
 * only
 */
public class TDLib.EditUserStarSubscription : TDObject {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Telegram payment identifier of the subscription
     */
    public string telegram_payment_charge_id { get; construct set; }

    /**
     * Pass true to cancel the subscription; pass false to allow the user to
     * enable it
     */
    public bool is_canceled { get; construct set; }

    public EditUserStarSubscription (
        int64 user_id,
        string telegram_payment_charge_id,
        bool is_canceled
    ) {
        Object (
            user_id: user_id,
            telegram_payment_charge_id: telegram_payment_charge_id,
            is_canceled: is_canceled,
            tdlib_type: "editUserStarSubscription",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
