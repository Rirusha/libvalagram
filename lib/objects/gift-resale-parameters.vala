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
 * Describes parameters of a unique gift available for resale
 */
public class TDLib.GiftResaleParameters : Error {

    /**
     * Resale price of the gift in Telegram Stars
     */
    public int64 star_count { get; construct set; }

    /**
     * Resale price of the gift in 1/100 of Toncoin
     */
    public int64 toncoin_cent_count { get; construct set; }

    /**
     * True, if the gift can be bought only using Toncoins
     */
    public bool toncoin_only { get; construct set; }

    public GiftResaleParameters (
        int64 star_count,
        int64 toncoin_cent_count,
        bool toncoin_only
    ) {
        Object (
            star_count: star_count,
            toncoin_cent_count: toncoin_cent_count,
            toncoin_only: toncoin_only,
            tdlib_type: "giftResaleParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
