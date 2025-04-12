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
 * Allows to buy a Telegram Premium subscription for another user with
 * payment in Telegram Stars; for bots only
 */
public class TDLib.GiftPremiumWithStars : TDObject {

    /**
     * Identifier of the user which will receive Telegram Premium
     */
    public int64 user_id { get; construct set; }

    /**
     * The number of Telegram Stars to pay for subscription
     */
    public int64 star_count { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active for
     * the user
     */
    public int32 month_count { get; construct set; }

    /**
     * Text to show to the user receiving Telegram Premium;
     * 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
     * Underline, Strikethrough, Spoiler, and CustomEmoji entities are
     * allowed
     */
    public FormattedText text { get; construct set; }

    public GiftPremiumWithStars (
        int64 user_id,
        int64 star_count,
        int32 month_count,
        FormattedText text
    ) {
        Object (
            user_id: user_id,
            star_count: star_count,
            month_count: month_count,
            text: text,
            tdlib_type: "giftPremiumWithStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
