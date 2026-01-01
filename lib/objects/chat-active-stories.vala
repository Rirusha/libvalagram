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
 * Describes active stories posted by a chat
 */
public class TDLib.ChatActiveStories : Error {

    /**
     * Identifier of the chat that posted the stories
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the story list in which the stories are shown; may be
     * null if the stories aren't shown in a story list
     */
    public StoryList? list { get; construct set; }

    /**
     * A parameter used to determine order of the stories in the story list;
     * 0 if the stories doesn't need to be shown in the story list. Stories
     * must be sorted by the pair (order, story_poster_chat_id) in descending
     * order
     */
    public int64 order { get; construct set; }

    /**
     * True, if the stories are shown in the main story list and can be
     * archived; otherwise, the stories can be hidden from the main story
     * list
     * only by calling {@link Client.remove_top_chat} with
     * topChatCategoryUsers and the chat_id. Stories of the current user
     * can't be archived nor hidden using {@link Client.remove_top_chat}
     */
    public bool can_be_archived { get; construct set; }

    /**
     * Identifier of the last read active story
     */
    public int32 max_read_story_id { get; construct set; }

    /**
     * Basic information about the stories; use {@link Client.get_story} to
     * get full information about the stories. The stories are in
     * chronological order (i.e., in order of increasing story identifiers)
     */
    public Gee.ArrayList<StoryInfo?> stories { get; construct set; default = new Gee.ArrayList<StoryInfo?> (); }

    public ChatActiveStories (
        int64 chat_id,
        StoryList? list,
        int64 order,
        bool can_be_archived,
        int32 max_read_story_id,
        Gee.ArrayList<StoryInfo?> stories
    ) {
        Object (
            chat_id: chat_id,
            list: list,
            order: order,
            can_be_archived: can_be_archived,
            max_read_story_id: max_read_story_id,
            stories: stories,
            tdlib_type: "chatActiveStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
