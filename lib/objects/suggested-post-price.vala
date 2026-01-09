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
 * Describes price of a suggested post
 */
public abstract class TDLib.SuggestedPostPrice : Error {}

/**
 * Describes price of a suggested post in Telegram Stars
 */
public class TDLib.SuggestedPostPriceStar : SuggestedPostPrice {

    /**
     * The Telegram Star amount expected to be paid for the post;
     * getOption("suggested_post_star_count_min")-getOption("suggested_post_star_count_max")
     */
    public int64 star_count { get; construct set; }

    public SuggestedPostPriceStar (
        int64 star_count
    ) {
        Object (
            star_count: star_count,
            tdlib_type: "suggestedPostPriceStar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes price of a suggested post in Toncoins
 */
public class TDLib.SuggestedPostPriceTon : SuggestedPostPrice {

    /**
     * The amount of 1/100 of Toncoin expected to be paid for the post;
     * getOption("suggested_post_toncoin_cent_count_min")-getOption("suggested_post_toncoin_cent_count_max")
     */
    public int64 toncoin_cent_count { get; construct set; }

    public SuggestedPostPriceTon (
        int64 toncoin_cent_count
    ) {
        Object (
            toncoin_cent_count: toncoin_cent_count,
            tdlib_type: "suggestedPostPriceTon",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
