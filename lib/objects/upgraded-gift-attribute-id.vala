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
 * Contains identifier of an upgraded gift attribute to search for
 */
public abstract class TDLib.UpgradedGiftAttributeId : Error {}

/**
 * Identifier of a gift model
 */
public class TDLib.UpgradedGiftAttributeIdModel : UpgradedGiftAttributeId {

    /**
     * Identifier of the sticker representing the model
     */
    public int64 sticker_id { get; construct set; }

    public UpgradedGiftAttributeIdModel (
        int64 sticker_id
    ) {
        Object (
            sticker_id: sticker_id,
            tdlib_type: "upgradedGiftAttributeIdModel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Identifier of a gift symbol
 */
public class TDLib.UpgradedGiftAttributeIdSymbol : UpgradedGiftAttributeId {

    /**
     * Identifier of the sticker representing the symbol
     */
    public int64 sticker_id { get; construct set; }

    public UpgradedGiftAttributeIdSymbol (
        int64 sticker_id
    ) {
        Object (
            sticker_id: sticker_id,
            tdlib_type: "upgradedGiftAttributeIdSymbol",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Identifier of a gift backdrop
 */
public class TDLib.UpgradedGiftAttributeIdBackdrop : UpgradedGiftAttributeId {

    /**
     * Identifier of the backdrop
     */
    public int32 backdrop_id { get; construct set; }

    public UpgradedGiftAttributeIdBackdrop (
        int32 backdrop_id
    ) {
        Object (
            backdrop_id: backdrop_id,
            tdlib_type: "upgradedGiftAttributeIdBackdrop",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
