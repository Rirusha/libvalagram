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
 * Contains result of gift upgrading
 */
public class TDLib.UpgradeGiftResult : Error {

    /**
     * The upgraded gift
     */
    public UpgradedGift gift { get; construct set; }

    /**
     * Unique identifier of the received gift for the current user
     */
    public string received_gift_id { get; construct set; }

    /**
     * True, if the gift is displayed on the user's or the channel's profile
     * page
     */
    public bool is_saved { get; construct set; }

    /**
     * True, if the gift can be transferred to another owner
     */
    public bool can_be_transferred { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid to transfer the upgraded
     * gift
     */
    public int64 transfer_star_count { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be transferred to
     * another owner; can be in the past; 0 if the gift can be transferred
     * immediately or transfer isn't possible
     */
    public int32 next_transfer_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be resold to another
     * user; can be in the past; 0 if the gift can't be resold; only for the
     * receiver of the gift
     */
    public int32 next_resale_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be transferred to the
     * TON blockchain as an NFT; can be in the past
     */
    public int32 export_date { get; construct set; }

    public UpgradeGiftResult (
        UpgradedGift gift,
        string received_gift_id,
        bool is_saved,
        bool can_be_transferred,
        int64 transfer_star_count,
        int32 next_transfer_date,
        int32 next_resale_date,
        int32 export_date
    ) {
        Object (
            gift: gift,
            received_gift_id: received_gift_id,
            is_saved: is_saved,
            can_be_transferred: can_be_transferred,
            transfer_star_count: transfer_star_count,
            next_transfer_date: next_transfer_date,
            next_resale_date: next_resale_date,
            export_date: export_date,
            tdlib_type: "upgradeGiftResult",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
