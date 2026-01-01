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
 * Represents a gift that was acquired by the current user on an auction
 */
public class TDLib.GiftAuctionAcquiredGift : Error {

    /**
     * Receiver of the gift
     */
    public MessageSender receiver_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift was acquired
     */
    public int32 date { get; construct set; }

    /**
     * The number of Telegram Stars that were paid for the gift
     */
    public int64 star_count { get; construct set; }

    /**
     * Identifier of the auction round in which the gift was acquired
     */
    public int32 auction_round_number { get; construct set; }

    /**
     * Position of the user in the round among all auction participants
     */
    public int32 auction_round_position { get; construct set; }

    /**
     * Unique number of the gift among gifts upgraded from the same gift
     * after upgrade; 0 if yet unassigned
     */
    public int32 unique_gift_number { get; construct set; }

    /**
     * Message added to the gift
     */
    public FormattedText text { get; construct set; }

    /**
     * True, if the sender and gift text are shown only to the gift receiver;
     * otherwise, everyone will be able to see them
     */
    public bool is_private { get; construct set; }

    public GiftAuctionAcquiredGift (
        MessageSender receiver_id,
        int32 date,
        int64 star_count,
        int32 auction_round_number,
        int32 auction_round_position,
        int32 unique_gift_number,
        FormattedText text,
        bool is_private
    ) {
        Object (
            receiver_id: receiver_id,
            date: date,
            star_count: star_count,
            auction_round_number: auction_round_number,
            auction_round_position: auction_round_position,
            unique_gift_number: unique_gift_number,
            text: text,
            is_private: is_private,
            tdlib_type: "giftAuctionAcquiredGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
