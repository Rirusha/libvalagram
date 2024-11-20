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
 * Describes an option for buying or upgrading Telegram Premium for self
 */
public class TDLib.PremiumStatePaymentOption : Error {

    /**
     * Information about the payment option
     */
    public PremiumPaymentOption payment_option { get; construct set; }

    /**
     * True, if this is the currently used Telegram Premium subscription
     * option
     */
    public bool is_current { get; construct set; }

    /**
     * True, if the payment option can be used to upgrade the existing
     * Telegram Premium subscription
     */
    public bool is_upgrade { get; construct set; }

    /**
     * Identifier of the last in-store transaction for the currently used
     * option
     */
    public string last_transaction_id { get; construct set; }

    public PremiumStatePaymentOption (
        PremiumPaymentOption payment_option,
        bool is_current,
        bool is_upgrade,
        string last_transaction_id
    ) {
        Object (
            payment_option: payment_option,
            is_current: is_current,
            is_upgrade: is_upgrade,
            last_transaction_id: last_transaction_id,
            tdlib_type: "premiumStatePaymentOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
