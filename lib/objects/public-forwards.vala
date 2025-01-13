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
 * Represents a list of public forwards and reposts as a story of a
 * message or a story
 */
public class TDLib.PublicForwards : Error {

    /**
     * Approximate total number of messages and stories found
     */
    public int32 total_count { get; construct set; }

    /**
     * List of found public forwards and reposts
     */
    public Gee.ArrayList<PublicForward?> forwards { get; construct set; default = new Gee.ArrayList<PublicForward?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public PublicForwards (
        int32 total_count,
        Gee.ArrayList<PublicForward?> forwards,
        string next_offset
    ) {
        Object (
            total_count: total_count,
            forwards: forwards,
            next_offset: next_offset,
            tdlib_type: "publicForwards",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
