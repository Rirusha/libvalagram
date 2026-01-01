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
 * Contains information about an affiliate that received commission from
 * a Telegram Star transaction
 */
public class TDLib.AffiliateInfo : Error {

    /**
     * The number of Telegram Stars received by the affiliate for each 1000
     * Telegram Stars received by the program owner
     */
    public int32 commission_per_mille { get; construct set; }

    /**
     * Identifier of the chat which received the commission
     */
    public int64 affiliate_chat_id { get; construct set; }

    /**
     * The amount of Telegram Stars that were received by the affiliate; can
     * be negative for refunds
     */
    public StarAmount star_amount { get; construct set; }

    public AffiliateInfo (
        int32 commission_per_mille,
        int64 affiliate_chat_id,
        StarAmount star_amount
    ) {
        Object (
            commission_per_mille: commission_per_mille,
            affiliate_chat_id: affiliate_chat_id,
            star_amount: star_amount,
            tdlib_type: "affiliateInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
