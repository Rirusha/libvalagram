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
 * Describes a prepaid giveaway
 */
public class TDLib.PrepaidGiveaway : Error {

    /**
     * Unique identifier of the prepaid giveaway
     */
    public int64 id_ { get; construct set; }

    /**
     * Number of users which will receive giveaway prize
     */
    public int32 winner_count { get; construct set; }

    /**
     * Prize of the giveaway
     */
    public GiveawayPrize prize { get; construct set; }

    /**
     * The number of boosts received by the chat from the giveaway; for
     * Telegram Star giveaways only
     */
    public int32 boost_count { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the giveaway was paid
     */
    public int32 payment_date { get; construct set; }

    public PrepaidGiveaway (
        int64 id_,
        int32 winner_count,
        GiveawayPrize prize,
        int32 boost_count,
        int32 payment_date
    ) {
        Object (
            id_: id_,
            winner_count: winner_count,
            prize: prize,
            boost_count: boost_count,
            payment_date: payment_date,
            tdlib_type: "prepaidGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
