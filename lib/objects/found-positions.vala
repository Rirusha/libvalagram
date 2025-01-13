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
 * Contains 0-based positions of matched objects
 */
public class TDLib.FoundPositions : Error {

    /**
     * Total number of matched objects
     */
    public int32 total_count { get; construct set; }

    /**
     * The positions of the matched objects
     */
    public Gee.ArrayList<int32?> positions { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public FoundPositions (
        int32 total_count,
        Gee.ArrayList<int32?> positions
    ) {
        Object (
            total_count: total_count,
            positions: positions,
            tdlib_type: "foundPositions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
