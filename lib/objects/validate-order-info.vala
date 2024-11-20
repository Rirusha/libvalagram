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
 * Validates the order information provided by a user and returns the
 * available shipping options for a flexible invoice
 */
internal class TDLib.ValidateOrderInfo : TDObject {

    /**
     * The invoice
     */
    public InputInvoice input_invoice { get; construct set; }

    /**
     * The order information, provided by the user; pass null if empty
     */
    public OrderInfo order_info { get; construct set; }

    /**
     * Pass true to save the order information
     */
    public bool allow_save { get; construct set; }

    public ValidateOrderInfo (
        InputInvoice input_invoice,
        OrderInfo order_info,
        bool allow_save
    ) {
        Object (
            input_invoice: input_invoice,
            order_info: order_info,
            allow_save: allow_save,
            tdlib_type: "validateOrderInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
