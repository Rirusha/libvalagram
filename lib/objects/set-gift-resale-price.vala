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
 * Changes resale price of a unique gift owned by the current user
 */
public class TDLib.SetGiftResalePrice : TDObject {

    /**
     * Identifier of the unique gift
     */
    public string received_gift_id { get; construct set; }

    /**
     * The new price for the unique gift; pass null to disallow gift resale.
     * The current user will receive
     * getOption("gift_resale_star_earnings_per_mille") Telegram Stars for
     * each 1000 Telegram Stars paid for the gift if the gift price is in
     * Telegram Stars or
     * getOption("gift_resale_ton_earnings_per_mille") Toncoins for each 1000
     * Toncoins paid for the gift if the gift price is in Toncoins
     */
    public GiftResalePrice price { get; construct set; }

    public SetGiftResalePrice (
        string received_gift_id,
        GiftResalePrice price
    ) {
        Object (
            received_gift_id: received_gift_id,
            price: price,
            tdlib_type: "setGiftResalePrice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
