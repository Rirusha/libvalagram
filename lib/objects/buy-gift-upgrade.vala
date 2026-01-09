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
 * Pays for upgrade of a regular gift that is owned by another user or
 * channel chat
 */
public class TDLib.BuyGiftUpgrade : TDObject {

    /**
     * Identifier of the user or the channel chat that owns the gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Prepaid upgrade hash as received along with the gift
     */
    public string prepaid_upgrade_hash { get; construct set; }

    /**
     * The Telegram Star amount the user agreed to pay for the upgrade; must
     * be equal to gift.upgrade_star_count
     */
    public int64 star_count { get; construct set; }

    public BuyGiftUpgrade (
        MessageSender owner_id,
        string prepaid_upgrade_hash,
        int64 star_count
    ) {
        Object (
            owner_id: owner_id,
            prepaid_upgrade_hash: prepaid_upgrade_hash,
            star_count: star_count,
            tdlib_type: "buyGiftUpgrade",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
