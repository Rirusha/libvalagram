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
 * Describes a symbol shown on the pattern of an upgraded gift
 */
public class TDLib.UpgradedGiftSymbol : Error {

    /**
     * Name of the symbol
     */
    public string name { get; construct set; }

    /**
     * The sticker representing the symbol
     */
    public Sticker sticker { get; construct set; }

    /**
     * The number of upgraded gifts that receive this symbol for each 1000
     * gifts upgraded
     */
    public int32 rarity_per_mille { get; construct set; }

    public UpgradedGiftSymbol (
        string name,
        Sticker sticker,
        int32 rarity_per_mille
    ) {
        Object (
            name: name,
            sticker: sticker,
            rarity_per_mille: rarity_per_mille,
            tdlib_type: "upgradedGiftSymbol",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
