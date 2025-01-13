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
 * Returns information about features, available to Premium users
 */
public class TDLib.GetPremiumFeatures : TDObject {

    /**
     * Source of the request; pass null if the method is called from some
     * non-standard source
     */
    public PremiumSource source { get; construct set; }

    public GetPremiumFeatures (
        PremiumSource source
    ) {
        Object (
            source: source,
            tdlib_type: "getPremiumFeatures",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
