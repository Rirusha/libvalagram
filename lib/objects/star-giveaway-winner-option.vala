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
 * Describes an option for the number of winners of a Telegram Star
 * giveaway
 */
public class TDLib.StarGiveawayWinnerOption : Error {

    /**
     * The number of users that will be chosen as winners
     */
    public int32 winner_count { get; construct set; }

    /**
     * The number of Telegram Stars that will be won by the winners of the
     * giveaway
     */
    public int64 won_star_count { get; construct set; }

    /**
     * True, if the option must be chosen by default
     */
    public bool is_default { get; construct set; }

    public StarGiveawayWinnerOption (
        int32 winner_count,
        int64 won_star_count,
        bool is_default
    ) {
        Object (
            winner_count: winner_count,
            won_star_count: won_star_count,
            is_default: is_default,
            tdlib_type: "starGiveawayWinnerOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
