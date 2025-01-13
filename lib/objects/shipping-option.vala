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
 * One shipping option
 */
public class TDLib.ShippingOption : Error {

    /**
     * Shipping option identifier
     */
    public string id_ { get; construct set; }

    /**
     * Option title
     */
    public string title { get; construct set; }

    /**
     * A list of objects used to calculate the total shipping costs
     */
    public Gee.ArrayList<LabeledPricePart?> price_parts { get; construct set; default = new Gee.ArrayList<LabeledPricePart?> (); }

    public ShippingOption (
        string id_,
        string title,
        Gee.ArrayList<LabeledPricePart?> price_parts
    ) {
        Object (
            id_: id_,
            title: title,
            price_parts: price_parts,
            tdlib_type: "shippingOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
