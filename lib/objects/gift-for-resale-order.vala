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
 * Describes order in which upgraded gifts for resale will be sorted
 */
public abstract class TDLib.GiftForResaleOrder : Error {}

/**
 * The gifts will be sorted by their price from the lowest to the highest
 */
public class TDLib.GiftForResaleOrderPrice : GiftForResaleOrder {

    public GiftForResaleOrderPrice () {
        Object (
            tdlib_type: "giftForResaleOrderPrice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The gifts will be sorted by the last date when their price was changed
 * from the newest to the oldest
 */
public class TDLib.GiftForResaleOrderPriceChangeDate : GiftForResaleOrder {

    public GiftForResaleOrderPriceChangeDate () {
        Object (
            tdlib_type: "giftForResaleOrderPriceChangeDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The gifts will be sorted by their number from the smallest to the
 * largest
 */
public class TDLib.GiftForResaleOrderNumber : GiftForResaleOrder {

    public GiftForResaleOrderNumber () {
        Object (
            tdlib_type: "giftForResaleOrderNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
