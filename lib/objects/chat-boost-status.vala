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
 * Describes current boost status of a chat
 */
public class TDLib.ChatBoostStatus : Error {

    /**
     * An HTTP URL, which can be used to boost the chat
     */
    public string boost_url { get; construct set; }

    /**
     * Identifiers of boost slots of the current user applied to the chat
     */
    public Gee.ArrayList<int32?> applied_slot_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Current boost level of the chat
     */
    public int32 level { get; construct set; }

    /**
     * The number of boosts received by the chat from created Telegram
     * Premium gift codes and giveaways; always 0 if the current user isn't
     * an administrator in the chat
     */
    public int32 gift_code_boost_count { get; construct set; }

    /**
     * The number of boosts received by the chat
     */
    public int32 boost_count { get; construct set; }

    /**
     * The number of boosts added to reach the current level
     */
    public int32 current_level_boost_count { get; construct set; }

    /**
     * The number of boosts needed to reach the next level; 0 if the next
     * level isn't available
     */
    public int32 next_level_boost_count { get; construct set; }

    /**
     * Approximate number of Telegram Premium subscribers joined the chat;
     * always 0 if the current user isn't an administrator in the chat
     */
    public int32 premium_member_count { get; construct set; }

    /**
     * A percentage of Telegram Premium subscribers joined the chat; always 0
     * if the current user isn't an administrator in the chat
     */
    public double premium_member_percentage { get; construct set; }

    /**
     * The list of prepaid giveaways available for the chat; only for chat
     * administrators
     */
    public Gee.ArrayList<PrepaidGiveaway?> prepaid_giveaways { get; construct set; default = new Gee.ArrayList<PrepaidGiveaway?> (); }

    public ChatBoostStatus (
        string boost_url,
        Gee.ArrayList<int32?> applied_slot_ids,
        int32 level,
        int32 gift_code_boost_count,
        int32 boost_count,
        int32 current_level_boost_count,
        int32 next_level_boost_count,
        int32 premium_member_count,
        double premium_member_percentage,
        Gee.ArrayList<PrepaidGiveaway?> prepaid_giveaways
    ) {
        Object (
            boost_url: boost_url,
            applied_slot_ids: applied_slot_ids,
            level: level,
            gift_code_boost_count: gift_code_boost_count,
            boost_count: boost_count,
            current_level_boost_count: current_level_boost_count,
            next_level_boost_count: next_level_boost_count,
            premium_member_count: premium_member_count,
            premium_member_percentage: premium_member_percentage,
            prepaid_giveaways: prepaid_giveaways,
            tdlib_type: "chatBoostStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
