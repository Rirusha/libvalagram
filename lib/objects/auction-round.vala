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
 * Describes a round of an auction
 */
public class TDLib.AuctionRound : Error {

    /**
     * 1-based number of the round
     */
    public int32 number { get; construct set; }

    /**
     * Duration of the round, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * The number of seconds for which the round will be extended if there
     * are changes in the top winners
     */
    public int32 extend_time { get; construct set; }

    /**
     * The number of top winners who trigger round extension if changed
     */
    public int32 top_winner_count { get; construct set; }

    public AuctionRound (
        int32 number,
        int32 duration,
        int32 extend_time,
        int32 top_winner_count
    ) {
        Object (
            number: number,
            duration: duration,
            extend_time: extend_time,
            top_winner_count: top_winner_count,
            tdlib_type: "auctionRound",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
