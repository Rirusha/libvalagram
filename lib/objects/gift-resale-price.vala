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
 * Describes price of a resold gift
 */
public abstract class TDLib.GiftResalePrice : Error {}

/**
 * Describes price of a resold gift in Telegram Stars
 */
public class TDLib.GiftResalePriceStar : GiftResalePrice {

    /**
     * The Telegram Star amount expected to be paid for the gift. Must be in
     * the range
     * 
     * getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max")
     * for gifts put for resale
     */
    public int64 star_count { get; construct set; }

    public GiftResalePriceStar (
        int64 star_count
    ) {
        Object (
            star_count: star_count,
            tdlib_type: "giftResalePriceStar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes price of a resold gift in Toncoins
 */
public class TDLib.GiftResalePriceTon : GiftResalePrice {

    /**
     * The amount of 1/100 of Toncoin expected to be paid for the gift. Must
     * be in the range
     * 
     * getOption("gift_resale_toncoin_cent_count_min")-getOption("gift_resale_toncoin_cent_count_max")
     */
    public int64 toncoin_cent_count { get; construct set; }

    public GiftResalePriceTon (
        int64 toncoin_cent_count
    ) {
        Object (
            toncoin_cent_count: toncoin_cent_count,
            tdlib_type: "giftResalePriceTon",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
