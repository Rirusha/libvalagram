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
 * Represents a list of stories
 */
public class TDLib.Stories : Error {

    /**
     * Approximate total number of stories found
     */
    public int32 total_count { get; construct set; }

    /**
     * The list of stories
     */
    public Gee.ArrayList<Story?> stories { get; construct set; default = new Gee.ArrayList<Story?> (); }

    /**
     * Identifiers of the pinned stories; returned only in
     * getChatPostedToChatPageStories with from_story_id == 0
     */
    public Gee.ArrayList<int32?> pinned_story_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public Stories (
        int32 total_count,
        Gee.ArrayList<Story?> stories,
        Gee.ArrayList<int32?> pinned_story_ids
    ) {
        Object (
            total_count: total_count,
            stories: stories,
            pinned_story_ids: pinned_story_ids,
            tdlib_type: "stories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
