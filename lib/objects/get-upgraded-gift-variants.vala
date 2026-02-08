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
 * Returns all possible variants of upgraded gifts for a regular gift
 */
public class TDLib.GetUpgradedGiftVariants : TDObject {

    /**
     * Identifier of the regular gift
     */
    public int64 regular_gift_id { get; construct set; }

    /**
     * Pass true to get models that can be obtained by upgrading a regular
     * gift
     */
    public bool return_upgrade_models { get; construct set; }

    /**
     * Pass true to get models that can be obtained by crafting a gift from
     * upgraded gifts
     */
    public bool return_craft_models { get; construct set; }

    public GetUpgradedGiftVariants (
        int64 regular_gift_id,
        bool return_upgrade_models,
        bool return_craft_models
    ) {
        Object (
            regular_gift_id: regular_gift_id,
            return_upgrade_models: return_upgrade_models,
            return_craft_models: return_craft_models,
            tdlib_type: "getUpgradedGiftVariants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
