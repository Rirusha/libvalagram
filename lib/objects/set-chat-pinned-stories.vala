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
 * Changes the list of pinned stories on a chat page; requires
 * can_edit_stories right in the chat
 */
public class TDLib.SetChatPinnedStories : TDObject {

    /**
     * Identifier of the chat that posted the stories
     */
    public int64 chat_id { get; construct set; }

    /**
     * New list of pinned stories. All stories must be posted to the chat
     * page first. There can be up to getOption("pinned_story_count_max")
     * pinned stories on a chat page
     */
    public Gee.ArrayList<int32?> story_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public SetChatPinnedStories (
        int64 chat_id,
        Gee.ArrayList<int32?> story_ids
    ) {
        Object (
            chat_id: chat_id,
            story_ids: story_ids,
            tdlib_type: "setChatPinnedStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
