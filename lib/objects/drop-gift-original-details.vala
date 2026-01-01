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
 * Drops original details for an upgraded gift
 */
public class TDLib.DropGiftOriginalDetails : TDObject {

    /**
     * Identifier of the gift
     */
    public string received_gift_id { get; construct set; }

    /**
     * The amount of Telegram Stars required to pay for the operation
     */
    public int64 star_count { get; construct set; }

    public DropGiftOriginalDetails (
        string received_gift_id,
        int64 star_count
    ) {
        Object (
            received_gift_id: received_gift_id,
            star_count: star_count,
            tdlib_type: "dropGiftOriginalDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
