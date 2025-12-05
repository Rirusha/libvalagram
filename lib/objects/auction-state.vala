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
 * Describes state of an auction
 */
public abstract class TDLib.AuctionState : Error {}

/**
 * Contains information about an ongoing auction
 */
public class TDLib.AuctionStateActive : AuctionState {

    /**
     * Point in time (Unix timestamp) when the auction started
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the auction will be ended
     */
    public int32 end_date { get; construct set; }

    /**
     * The minimum possible bid in the auction in Telegram Stars
     */
    public int64 min_bid { get; construct set; }

    /**
     * A sparse list of bids that were made in the auction
     */
    public Gee.ArrayList<AuctionBid?> bid_levels { get; construct set; default = new Gee.ArrayList<AuctionBid?> (); }

    /**
     * User identifiers of at most 3 users with the biggest bids
     */
    public Gee.ArrayList<int64?> top_bidder_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Point in time (Unix timestamp) when the current round will end
     */
    public int32 current_round_end_date { get; construct set; }

    /**
     * 1-based number of the current round
     */
    public int32 current_round_number { get; construct set; }

    /**
     * The total number of rounds
     */
    public int32 total_round_count { get; construct set; }

    /**
     * The number of items that have to be distributed on the auciton
     */
    public int32 left_item_count { get; construct set; }

    /**
     * The number of items that were purchased by the current user on the
     * auciton
     */
    public int32 acquired_item_count { get; construct set; }

    /**
     * Bid of the current user in the auction; may be null if none
     */
    public UserAuctionBid? user_bid { get; construct set; }

    public AuctionStateActive (
        int32 start_date,
        int32 end_date,
        int64 min_bid,
        Gee.ArrayList<AuctionBid?> bid_levels,
        Gee.ArrayList<int64?> top_bidder_user_ids,
        int32 current_round_end_date,
        int32 current_round_number,
        int32 total_round_count,
        int32 left_item_count,
        int32 acquired_item_count,
        UserAuctionBid? user_bid
    ) {
        Object (
            start_date: start_date,
            end_date: end_date,
            min_bid: min_bid,
            bid_levels: bid_levels,
            top_bidder_user_ids: top_bidder_user_ids,
            current_round_end_date: current_round_end_date,
            current_round_number: current_round_number,
            total_round_count: total_round_count,
            left_item_count: left_item_count,
            acquired_item_count: acquired_item_count,
            user_bid: user_bid,
            tdlib_type: "auctionStateActive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Contains information about a finished auction
 */
public class TDLib.AuctionStateFinished : AuctionState {

    /**
     * Point in time (Unix timestamp) when the auction started
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the auction will be ended
     */
    public int32 end_date { get; construct set; }

    /**
     * Average price of bought items in Telegram Stars
     */
    public int64 average_price { get; construct set; }

    /**
     * The number of items that were purchased by the current user on the
     * auciton
     */
    public int32 acquired_item_count { get; construct set; }

    public AuctionStateFinished (
        int32 start_date,
        int32 end_date,
        int64 average_price,
        int32 acquired_item_count
    ) {
        Object (
            start_date: start_date,
            end_date: end_date,
            average_price: average_price,
            acquired_item_count: acquired_item_count,
            tdlib_type: "auctionStateFinished",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
