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
 * Upgrades a regular gift
 */
public class TDLib.UpgradeGift : TDObject {

    /**
     * Unique identifier of business connection on behalf of which to send
     * the request; for bots only
     */
    public string business_connection_id { get; construct set; }

    /**
     * Identifier of the gift
     */
    public string received_gift_id { get; construct set; }

    /**
     * Pass true to keep the original gift text, sender and receiver in the
     * upgraded gift
     */
    public bool keep_original_details { get; construct set; }

    /**
     * The amount of Telegram Stars required to pay for the upgrade. It the
     * gift has prepaid_upgrade_star_count > 0, then pass 0, otherwise, pass
     * gift.upgrade_star_count
     */
    public int64 star_count { get; construct set; }

    public UpgradeGift (
        string business_connection_id,
        string received_gift_id,
        bool keep_original_details,
        int64 star_count
    ) {
        Object (
            business_connection_id: business_connection_id,
            received_gift_id: received_gift_id,
            keep_original_details: keep_original_details,
            star_count: star_count,
            tdlib_type: "upgradeGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
