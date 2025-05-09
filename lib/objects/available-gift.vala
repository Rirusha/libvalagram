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
 * Describes a gift that is available for purchase
 */
public class TDLib.AvailableGift : Error {

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    /**
     * Number of gifts that are available for resale
     */
    public int32 resale_count { get; construct set; }

    /**
     * The minimum price for the gifts available for resale; 0 if there are
     * no such gifts
     */
    public int64 min_resale_star_count { get; construct set; }

    /**
     * The title of the upgraded gift; empty if the gift isn't available for
     * resale
     */
    public string title { get; construct set; }

    public AvailableGift (
        Gift gift,
        int32 resale_count,
        int64 min_resale_star_count,
        string title
    ) {
        Object (
            gift: gift,
            resale_count: resale_count,
            min_resale_star_count: min_resale_star_count,
            title: title,
            tdlib_type: "availableGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
