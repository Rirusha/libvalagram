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
 * Loads more active stories from a story list. The loaded stories will
 * be sent through updates. Active stories are sorted by
 * the pair (active_stories.order, active_stories.story_poster_chat_id)
 * in descending order. Returns a 404 error if all active stories have
 * been loaded
 */
public class TDLib.LoadActiveStories : TDObject {

    /**
     * The story list in which to load active stories
     */
    public StoryList story_list { get; construct set; }

    public LoadActiveStories (
        StoryList story_list
    ) {
        Object (
            story_list: story_list,
            tdlib_type: "loadActiveStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
