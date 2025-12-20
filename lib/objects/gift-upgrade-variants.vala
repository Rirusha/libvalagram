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
 * Contains all possible variants of upgraded gifts for the given regular
 * gift
 */
public class TDLib.GiftUpgradeVariants : Error {

    /**
     * Models that can be chosen for the gift after upgrade
     */
    public Gee.ArrayList<UpgradedGiftModel?> models { get; construct set; default = new Gee.ArrayList<UpgradedGiftModel?> (); }

    /**
     * Symbols that can be chosen for the gift after upgrade
     */
    public Gee.ArrayList<UpgradedGiftSymbol?> symbols { get; construct set; default = new Gee.ArrayList<UpgradedGiftSymbol?> (); }

    /**
     * Backdrops that can be chosen for the gift after upgrade
     */
    public Gee.ArrayList<UpgradedGiftBackdrop?> backdrops { get; construct set; default = new Gee.ArrayList<UpgradedGiftBackdrop?> (); }

    public GiftUpgradeVariants (
        Gee.ArrayList<UpgradedGiftModel?> models,
        Gee.ArrayList<UpgradedGiftSymbol?> symbols,
        Gee.ArrayList<UpgradedGiftBackdrop?> backdrops
    ) {
        Object (
            models: models,
            symbols: symbols,
            backdrops: backdrops,
            tdlib_type: "giftUpgradeVariants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
