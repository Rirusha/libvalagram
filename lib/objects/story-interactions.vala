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
 * Represents a list of interactions with a story
 */
public class TDLib.StoryInteractions : Error {

    /**
     * Approximate total number of interactions found
     */
    public int32 total_count { get; construct set; }

    /**
     * Approximate total number of found forwards and reposts; always 0 for
     * chat stories
     */
    public int32 total_forward_count { get; construct set; }

    /**
     * Approximate total number of found reactions; always 0 for chat stories
     */
    public int32 total_reaction_count { get; construct set; }

    /**
     * List of story interactions
     */
    public Gee.ArrayList<StoryInteraction?> interactions { get; construct set; default = new Gee.ArrayList<StoryInteraction?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public StoryInteractions (
        int32 total_count,
        int32 total_forward_count,
        int32 total_reaction_count,
        Gee.ArrayList<StoryInteraction?> interactions,
        string next_offset
    ) {
        Object (
            total_count: total_count,
            total_forward_count: total_forward_count,
            total_reaction_count: total_reaction_count,
            interactions: interactions,
            next_offset: next_offset,
            tdlib_type: "storyInteractions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
