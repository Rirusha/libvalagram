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
 * Allows the specified user to send unpaid private messages to the
 * current user by adding a rule to userPrivacySettingAllowUnpaidMessages
 */
public class TDLib.AllowUnpaidMessagesFromUser : TDObject {

    /**
     * Identifier of the user
     */
    public int64 user_id { get; construct set; }

    /**
     * Pass true to refund the user previously paid messages
     */
    public bool refund_payments { get; construct set; }

    public AllowUnpaidMessagesFromUser (
        int64 user_id,
        bool refund_payments
    ) {
        Object (
            user_id: user_id,
            refund_payments: refund_payments,
            tdlib_type: "allowUnpaidMessagesFromUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
