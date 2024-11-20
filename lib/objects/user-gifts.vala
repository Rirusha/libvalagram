/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Represents a list of gifts received by a user
 */
public class TDLib.UserGifts : Error {

    /**
     * The total number of received gifts
     */
    public int32 total_count { get; construct set; }

    /**
     * The list of gifts
     */
    public Gee.ArrayList<UserGift?> gifts { get; construct set; default = new Gee.ArrayList<UserGift?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public UserGifts (
        int32 total_count,
        Gee.ArrayList<UserGift?> gifts,
        string next_offset
    ) {
        Object (
            total_count: total_count,
            gifts: gifts,
            next_offset: next_offset,
            tdlib_type: "userGifts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
