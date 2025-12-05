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
 * Describes a gift that can be sent to another user or channel chat
 */
public class TDLib.Gift : Error {

    /**
     * Unique identifier of the gift
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the chat that published the gift; 0 if none
     */
    public int64 publisher_chat_id { get; construct set; }

    /**
     * The sticker representing the gift
     */
    public Sticker sticker { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid for the gift
     */
    public int64 star_count { get; construct set; }

    /**
     * Number of Telegram Stars that can be claimed by the receiver instead
     * of the regular gift by default. If the gift was paid with just bought
     * Telegram Stars, then full value can be claimed
     */
    public int64 default_sell_star_count { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid to upgrade the gift; 0 if
     * upgrade isn't possible
     */
    public int64 upgrade_star_count { get; construct set; }

    /**
     * True, if the gift can be used to customize the user's name, and
     * backgrounds of profile photo, reply header, and link preview
     */
    public bool has_colors { get; construct set; }

    /**
     * True, if the gift is a birthday gift
     */
    public bool is_for_birthday { get; construct set; }

    /**
     * True, if the gift can be bought only by Telegram Premium subscribers
     */
    public bool is_premium { get; construct set; }

    /**
     * Information about the auction on which the gift can be purchased; may
     * be null if the gift can be purchased directly
     */
    public GiftAuction? auction_info { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be sent next time by
     * the current user; can be 0 or a date in the past.
     * If the date is in the future, then call {@link Client.can_send_gift}
     * to get the reason, why the gift can't be sent now
     */
    public int32 next_send_date { get; construct set; }

    /**
     * Number of times the gift can be purchased by the current user; may be
     * null if not limited
     */
    public GiftPurchaseLimits? user_limits { get; construct set; }

    /**
     * Number of times the gift can be purchased all users; may be null if
     * not limited
     */
    public GiftPurchaseLimits? overall_limits { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift was send for the first
     * time; for sold out gifts only
     */
    public int32 first_send_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift was send for the last
     * time; for sold out gifts only
     */
    public int32 last_send_date { get; construct set; }

    public Gift (
        int64 id_,
        int64 publisher_chat_id,
        Sticker sticker,
        int64 star_count,
        int64 default_sell_star_count,
        int64 upgrade_star_count,
        bool has_colors,
        bool is_for_birthday,
        bool is_premium,
        GiftAuction? auction_info,
        int32 next_send_date,
        GiftPurchaseLimits? user_limits,
        GiftPurchaseLimits? overall_limits,
        int32 first_send_date,
        int32 last_send_date
    ) {
        Object (
            id_: id_,
            publisher_chat_id: publisher_chat_id,
            sticker: sticker,
            star_count: star_count,
            default_sell_star_count: default_sell_star_count,
            upgrade_star_count: upgrade_star_count,
            has_colors: has_colors,
            is_for_birthday: is_for_birthday,
            is_premium: is_premium,
            auction_info: auction_info,
            next_send_date: next_send_date,
            user_limits: user_limits,
            overall_limits: overall_limits,
            first_send_date: first_send_date,
            last_send_date: last_send_date,
            tdlib_type: "gift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
