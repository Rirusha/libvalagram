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
 * Order information
 */
public class TDLib.OrderInfo : Error {

    /**
     * Name of the user
     */
    public string name { get; construct set; }

    /**
     * Phone number of the user
     */
    public string phone_number { get; construct set; }

    /**
     * Email address of the user
     */
    public string email_address { get; construct set; }

    /**
     * Shipping address for this order; may be null
     */
    public Address? shipping_address { get; construct set; }

    public OrderInfo (
        string name,
        string phone_number,
        string email_address,
        Address? shipping_address
    ) {
        Object (
            name: name,
            phone_number: phone_number,
            email_address: email_address,
            shipping_address: shipping_address,
            tdlib_type: "orderInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
