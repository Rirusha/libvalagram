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
 * Represents a list of reactions added to a message
 */
public class TDLib.AddedReactions : Error {

    /**
     * The total number of found reactions
     */
    public int32 total_count { get; construct set; }

    /**
     * The list of added reactions
     */
    public Gee.ArrayList<AddedReaction?> reactions { get; construct set; default = new Gee.ArrayList<AddedReaction?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public AddedReactions (
        int32 total_count,
        Gee.ArrayList<AddedReaction?> reactions,
        string next_offset
    ) {
        Object (
            total_count: total_count,
            reactions: reactions,
            next_offset: next_offset,
            tdlib_type: "addedReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
