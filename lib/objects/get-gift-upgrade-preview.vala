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
 * Returns examples of possible upgraded gifts for a regular gift
 */
public class TDLib.GetGiftUpgradePreview : TDObject {

    /**
     * Identifier of the gift
     */
    public int64 gift_id { get; construct set; }

    public GetGiftUpgradePreview (
        int64 gift_id
    ) {
        Object (
            gift_id: gift_id,
            tdlib_type: "getGiftUpgradePreview",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
