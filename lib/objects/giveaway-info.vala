/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Contains information about a giveaway
 */
public abstract class TDLib.GiveawayInfo : Error {}

/**
 * Describes an ongoing giveaway
 */
public class TDLib.GiveawayInfoOngoing : GiveawayInfo {

    /**
     * Point in time (Unix timestamp) when the giveaway was created
     */
    public int32 creation_date { get; construct set; }

    /**
     * Status of the current user in the giveaway
     */
    public GiveawayParticipantStatus status { get; construct set; }

    /**
     * True, if the giveaway has ended and results are being prepared
     */
    public bool is_ended { get; construct set; }

    public GiveawayInfoOngoing (
        int32 creation_date,
        GiveawayParticipantStatus status,
        bool is_ended
    ) {
        Object (
            creation_date: creation_date,
            status: status,
            is_ended: is_ended,
            tdlib_type: "giveawayInfoOngoing",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a completed giveaway
 */
public class TDLib.GiveawayInfoCompleted : GiveawayInfo {

    /**
     * Point in time (Unix timestamp) when the giveaway was created
     */
    public int32 creation_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the winners were selected. May be
     * bigger than winners selection date specified in parameters of the
     * giveaway
     */
    public int32 actual_winners_selection_date { get; construct set; }

    /**
     * True, if the giveaway was canceled and was fully refunded
     */
    public bool was_refunded { get; construct set; }

    /**
     * True, if the current user is a winner of the giveaway
     */
    public bool is_winner { get; construct set; }

    /**
     * Number of winners in the giveaway
     */
    public int32 winner_count { get; construct set; }

    /**
     * Number of winners, which activated their gift codes; for Telegram
     * Premium giveaways only
     */
    public int32 activation_count { get; construct set; }

    /**
     * Telegram Premium gift code that was received by the current user;
     * empty if the user isn't a winner in the giveaway or the giveaway isn't
     * a Telegram Premium giveaway
     */
    public string gift_code { get; construct set; }

    /**
     * The amount of Telegram Stars won by the current user; 0 if the user
     * isn't a winner in the giveaway or the giveaway isn't a Telegram Star
     * giveaway
     */
    public int64 won_star_count { get; construct set; }

    public GiveawayInfoCompleted (
        int32 creation_date,
        int32 actual_winners_selection_date,
        bool was_refunded,
        bool is_winner,
        int32 winner_count,
        int32 activation_count,
        string gift_code,
        int64 won_star_count
    ) {
        Object (
            creation_date: creation_date,
            actual_winners_selection_date: actual_winners_selection_date,
            was_refunded: was_refunded,
            is_winner: is_winner,
            winner_count: winner_count,
            activation_count: activation_count,
            gift_code: gift_code,
            won_star_count: won_star_count,
            tdlib_type: "giveawayInfoCompleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
