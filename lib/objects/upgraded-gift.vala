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
 * Describes an upgraded gift that can be gifted to another user or
 * transferred to TON blockchain as an NFT
 */
public class TDLib.UpgradedGift : Error {

    /**
     * Unique identifier of the gift
     */
    public int64 id_ { get; construct set; }

    /**
     * The title of the upgraded gift
     */
    public string title { get; construct set; }

    /**
     * Unique number of the upgraded gift among gifts upgraded from the same
     * gift
     */
    public int32 number { get; construct set; }

    /**
     * Total number of gifts that were upgraded from the same gift
     */
    public int32 total_upgraded_count { get; construct set; }

    /**
     * The maximum number of gifts that can be upgraded from the same gift
     */
    public int32 max_upgraded_count { get; construct set; }

    /**
     * User identifier of the user that owns the upgraded gift; 0 if none
     */
    public int64 owner_user_id { get; construct set; }

    /**
     * Model of the upgraded gift
     */
    public UpgradedGiftModel model { get; construct set; }

    /**
     * Symbol of the upgraded gift
     */
    public UpgradedGiftSymbol symbol { get; construct set; }

    /**
     * Backdrop of the upgraded gift
     */
    public UpgradedGiftBackdrop backdrop { get; construct set; }

    /**
     * Information about the originally sent gift; may be null if unknown
     */
    public UpgradedGiftOriginalDetails? original_details { get; construct set; }

    public UpgradedGift (
        int64 id_,
        string title,
        int32 number,
        int32 total_upgraded_count,
        int32 max_upgraded_count,
        int64 owner_user_id,
        UpgradedGiftModel model,
        UpgradedGiftSymbol symbol,
        UpgradedGiftBackdrop backdrop,
        UpgradedGiftOriginalDetails? original_details
    ) {
        Object (
            id_: id_,
            title: title,
            number: number,
            total_upgraded_count: total_upgraded_count,
            max_upgraded_count: max_upgraded_count,
            owner_user_id: owner_user_id,
            model: model,
            symbol: symbol,
            backdrop: backdrop,
            original_details: original_details,
            tdlib_type: "upgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
