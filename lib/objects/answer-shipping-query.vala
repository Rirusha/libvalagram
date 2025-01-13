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
 * Sets the result of a shipping query; for bots only
 */
internal class TDLib.AnswerShippingQuery : TDObject {

    /**
     * Identifier of the shipping query
     */
    public int64 shipping_query_id { get; construct set; }

    /**
     * Available shipping options
     */
    public Gee.ArrayList<ShippingOption?> shipping_options { get; construct set; default = new Gee.ArrayList<ShippingOption?> (); }

    /**
     * An error message, empty on success
     */
    public string error_message { get; construct set; }

    public AnswerShippingQuery (
        int64 shipping_query_id,
        Gee.ArrayList<ShippingOption?> shipping_options,
        string error_message
    ) {
        Object (
            shipping_query_id: shipping_query_id,
            shipping_options: shipping_options,
            error_message: error_message,
            tdlib_type: "answerShippingQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
