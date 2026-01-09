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
 * Describes a possibly non-integer Telegram Star amount
 */
public class TDLib.StarAmount : Error {

    /**
     * The integer Telegram Star amount rounded to 0
     */
    public int64 star_count { get; construct set; }

    /**
     * The number of 1/1000000000 shares of Telegram Stars; from -999999999
     * to 999999999
     */
    public int32 nanostar_count { get; construct set; }

    public StarAmount (
        int64 star_count,
        int32 nanostar_count
    ) {
        Object (
            star_count: star_count,
            nanostar_count: nanostar_count,
            tdlib_type: "starAmount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
