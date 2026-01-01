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
 * Places a bid on an auction gift
 */
public class TDLib.PlaceGiftAuctionBid : TDObject {

    /**
     * Identifier of the gift to place the bid on
     */
    public int64 gift_id { get; construct set; }

    /**
     * The number of Telegram Stars to place in the bid
     */
    public int64 star_count { get; construct set; }

    /**
     * Identifier of the user that will receive the gift
     */
    public int64 user_id { get; construct set; }

    /**
     * Text to show along with the gift; 0-getOption("gift_text_length_max")
     * characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and
     * CustomEmoji entities are allowed.
     * Must be empty if the receiver enabled paid messages
     */
    public FormattedText text { get; construct set; }

    /**
     * Pass true to show gift text and sender only to the gift receiver;
     * otherwise, everyone will be able to see them
     */
    public bool is_private { get; construct set; }

    public PlaceGiftAuctionBid (
        int64 gift_id,
        int64 star_count,
        int64 user_id,
        FormattedText text,
        bool is_private
    ) {
        Object (
            gift_id: gift_id,
            star_count: star_count,
            user_id: user_id,
            text: text,
            is_private: is_private,
            tdlib_type: "placeGiftAuctionBid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
