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
 * Describes rarity of an upgraded gift attribute
 */
public abstract class TDLib.UpgradedGiftAttributeRarity : Error {}

/**
 * The rarity is represented as the numeric frequence of the model
 */
public class TDLib.UpgradedGiftAttributeRarityPerMille : UpgradedGiftAttributeRarity {

    /**
     * The number of upgraded gifts that receive this attribute for each 1000
     * gifts upgraded; if 0, then it can be shown as "<0.1%"
     */
    public int32 per_mille { get; construct set; }

    public UpgradedGiftAttributeRarityPerMille (
        int32 per_mille
    ) {
        Object (
            per_mille: per_mille,
            tdlib_type: "upgradedGiftAttributeRarityPerMille",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The attribute is uncommon
 */
public class TDLib.UpgradedGiftAttributeRarityUncommon : UpgradedGiftAttributeRarity {

    public UpgradedGiftAttributeRarityUncommon () {
        Object (
            tdlib_type: "upgradedGiftAttributeRarityUncommon",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The attribute is rare
 */
public class TDLib.UpgradedGiftAttributeRarityRare : UpgradedGiftAttributeRarity {

    public UpgradedGiftAttributeRarityRare () {
        Object (
            tdlib_type: "upgradedGiftAttributeRarityRare",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The attribute is epic
 */
public class TDLib.UpgradedGiftAttributeRarityEpic : UpgradedGiftAttributeRarity {

    public UpgradedGiftAttributeRarityEpic () {
        Object (
            tdlib_type: "upgradedGiftAttributeRarityEpic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The attribute is legendary
 */
public class TDLib.UpgradedGiftAttributeRarityLegendary : UpgradedGiftAttributeRarity {

    public UpgradedGiftAttributeRarityLegendary () {
        Object (
            tdlib_type: "upgradedGiftAttributeRarityLegendary",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
