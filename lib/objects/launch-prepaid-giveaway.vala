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
 * Launches a prepaid giveaway
 */
public class TDLib.LaunchPrepaidGiveaway : TDObject {

    /**
     * Unique identifier of the prepaid giveaway
     */
    public int64 giveaway_id { get; construct set; }

    /**
     * Giveaway parameters
     */
    public GiveawayParameters parameters { get; construct set; }

    /**
     * The number of users to receive giveaway prize
     */
    public int32 winner_count { get; construct set; }

    /**
     * The number of Telegram Stars to be distributed through the giveaway;
     * pass 0 for Telegram Premium giveaways
     */
    public int64 star_count { get; construct set; }

    public LaunchPrepaidGiveaway (
        int64 giveaway_id,
        GiveawayParameters parameters,
        int32 winner_count,
        int64 star_count
    ) {
        Object (
            giveaway_id: giveaway_id,
            parameters: parameters,
            winner_count: winner_count,
            star_count: star_count,
            tdlib_type: "launchPrepaidGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
