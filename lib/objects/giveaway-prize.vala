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
 * Contains information about a giveaway prize
 */
public abstract class TDLib.GiveawayPrize : Error {}

/**
 * The giveaway sends Telegram Premium subscriptions to the winners
 */
public class TDLib.GiveawayPrizePremium : GiveawayPrize {

    /**
     * Number of months the Telegram Premium subscription will be active
     * after code activation
     */
    public int32 month_count { get; construct set; }

    public GiveawayPrizePremium (
        int32 month_count
    ) {
        Object (
            month_count: month_count,
            tdlib_type: "giveawayPrizePremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The giveaway sends Telegram Stars to the winners
 */
public class TDLib.GiveawayPrizeStars : GiveawayPrize {

    /**
     * Number of Telegram Stars that will be shared by all winners
     */
    public int64 star_count { get; construct set; }

    public GiveawayPrizeStars (
        int64 star_count
    ) {
        Object (
            star_count: star_count,
            tdlib_type: "giveawayPrizeStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
