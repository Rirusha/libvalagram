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
 * Contains basic information about a story
 */
public class TDLib.StoryInfo : Error {

    /**
     * Unique story identifier among stories of the given sender
     */
    public int32 story_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the story was published
     */
    public int32 date { get; construct set; }

    /**
     * True, if the story is available only to close friends
     */
    public bool is_for_close_friends { get; construct set; }

    public StoryInfo (
        int32 story_id,
        int32 date,
        bool is_for_close_friends
    ) {
        Object (
            story_id: story_id,
            date: date,
            is_for_close_friends: is_for_close_friends,
            tdlib_type: "storyInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
