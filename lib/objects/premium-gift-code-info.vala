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
 * Contains information about a Telegram Premium gift code
 */
public class TDLib.PremiumGiftCodeInfo : Error {

    /**
     * Identifier of a chat or a user that created the gift code; may be null
     * if unknown. If null and the code is from messagePremiumGiftCode
     * message, then creator_id from the message can be used
     */
    public MessageSender? creator_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the code was created
     */
    public int32 creation_date { get; construct set; }

    /**
     * True, if the gift code was created for a giveaway
     */
    public bool is_from_giveaway { get; construct set; }

    /**
     * Identifier of the corresponding giveaway message in the creator_id
     * chat; can be 0 or an identifier of a deleted message
     */
    public int64 giveaway_message_id { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active
     * after code activation
     */
    public int32 month_count { get; construct set; }

    /**
     * Identifier of a user for which the code was created; 0 if none
     */
    public int64 user_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the code was activated; 0 if none
     */
    public int32 use_date { get; construct set; }

    public PremiumGiftCodeInfo (
        MessageSender? creator_id,
        int32 creation_date,
        bool is_from_giveaway,
        int64 giveaway_message_id,
        int32 month_count,
        int64 user_id,
        int32 use_date
    ) {
        Object (
            creator_id: creator_id,
            creation_date: creation_date,
            is_from_giveaway: is_from_giveaway,
            giveaway_message_id: giveaway_message_id,
            month_count: month_count,
            user_id: user_id,
            use_date: use_date,
            tdlib_type: "premiumGiftCodeInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
