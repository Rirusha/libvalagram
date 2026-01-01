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
 * Contains a temporary identifier of validated order information, which
 * is stored for one hour, and the available shipping options
 */
public class TDLib.ValidatedOrderInfo : Error {

    /**
     * Temporary identifier of the order information
     */
    public string order_info_id { get; construct set; }

    /**
     * Available shipping options
     */
    public Gee.ArrayList<ShippingOption?> shipping_options { get; construct set; default = new Gee.ArrayList<ShippingOption?> (); }

    public ValidatedOrderInfo (
        string order_info_id,
        Gee.ArrayList<ShippingOption?> shipping_options
    ) {
        Object (
            order_info_id: order_info_id,
            shipping_options: shipping_options,
            tdlib_type: "validatedOrderInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
