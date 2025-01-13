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
 * Upgrades a gift received by the current user. Unless the gift has
 * prepaid_upgrade_star_count > 0, the user must pay
 * gift.upgrade_star_count Telegram Stars for the upgrade
 */
public class TDLib.UpgradeGift : TDObject {

    /**
     * Identifier of the user that sent the gift
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Identifier of the message with the gift in the chat with the user
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true to keep the original gift text, sender and receiver in the
     * upgraded gift
     */
    public bool keep_original_details { get; construct set; }

    public UpgradeGift (
        int64 sender_user_id,
        int64 message_id,
        bool keep_original_details
    ) {
        Object (
            sender_user_id: sender_user_id,
            message_id: message_id,
            keep_original_details: keep_original_details,
            tdlib_type: "upgradeGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
