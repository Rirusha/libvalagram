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
 * Describes a price required to pay to upgrade a gift
 */
public class TDLib.GiftUpgradePrice : Error {

    /**
     * Point in time (Unix timestamp) when the price will be in effect
     */
    public int32 date { get; construct set; }

    /**
     * The Telegram Star amount required to pay to upgrade the gift
     */
    public int64 star_count { get; construct set; }

    public GiftUpgradePrice (
        int32 date,
        int64 star_count
    ) {
        Object (
            date: date,
            star_count: star_count,
            tdlib_type: "giftUpgradePrice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
