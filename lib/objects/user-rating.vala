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
 * Contains  of user rating
 */
public class TDLib.UserRating : Error {

    /**
     * The level of the user; may be negative
     */
    public int32 level { get; construct set; }

    /**
     * True, if the maximum level is reached
     */
    public bool is_maximum_level_reached { get; construct set; }

    /**
     * Numerical value of the rating
     */
    public int64 rating { get; construct set; }

    /**
     * The rating required for the current level
     */
    public int64 current_level_rating { get; construct set; }

    /**
     * The rating required for the next level; 0 if the maximum level is
     * reached
     */
    public int64 next_level_rating { get; construct set; }

    public UserRating (
        int32 level,
        bool is_maximum_level_reached,
        int64 rating,
        int64 current_level_rating,
        int64 next_level_rating
    ) {
        Object (
            level: level,
            is_maximum_level_reached: is_maximum_level_reached,
            rating: rating,
            current_level_rating: current_level_rating,
            next_level_rating: next_level_rating,
            tdlib_type: "userRating",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
