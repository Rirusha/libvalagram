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
 * Describes a backdrop of an upgraded gift
 */
public class TDLib.UpgradedGiftBackdrop : Error {

    /**
     * Name of the backdrop
     */
    public string name { get; construct set; }

    /**
     * A color in the center of the backdrop in the RGB format
     */
    public int32 center_color { get; construct set; }

    /**
     * A color on the edges of the backdrop in the RGB format
     */
    public int32 edge_color { get; construct set; }

    /**
     * A color to be applied for the symbol in the RGB format
     */
    public int32 symbol_color { get; construct set; }

    /**
     * A color for the text on the backdrop in the RGB format
     */
    public int32 text_color { get; construct set; }

    /**
     * The number of upgraded gift that receive this backdrop for each 1000
     * gifts upgraded
     */
    public int32 rarity_per_mille { get; construct set; }

    public UpgradedGiftBackdrop (
        string name,
        int32 center_color,
        int32 edge_color,
        int32 symbol_color,
        int32 text_color,
        int32 rarity_per_mille
    ) {
        Object (
            name: name,
            center_color: center_color,
            edge_color: edge_color,
            symbol_color: symbol_color,
            text_color: text_color,
            rarity_per_mille: rarity_per_mille,
            tdlib_type: "upgradedGiftBackdrop",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
