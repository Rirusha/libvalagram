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
 * Describes result of sending a resold gift
 */
public abstract class TDLib.GiftResaleResult : Error {}

/**
 * Operation was successfully completed
 */
public class TDLib.GiftResaleResultOk : GiftResaleResult {

    /**
     * Unique identifier of the received gift; only for the gifts sent to the
     * current user
     */
    public string received_gift_id { get; construct set; }

    public GiftResaleResultOk (
        string received_gift_id
    ) {
        Object (
            received_gift_id: received_gift_id,
            tdlib_type: "giftResaleResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Operation has failed, because price has increased. If the price has
 * decreased, then the buying will succeed anyway
 */
public class TDLib.GiftResaleResultPriceIncreased : GiftResaleResult {

    /**
     * New price for the gift
     */
    public GiftResalePrice price { get; construct set; }

    public GiftResaleResultPriceIncreased (
        GiftResalePrice price
    ) {
        Object (
            price: price,
            tdlib_type: "giftResaleResultPriceIncreased",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
