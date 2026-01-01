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
 * Toggles whether a story is accessible after expiration. Can be called
 * only if story.can_toggle_is_posted_to_chat_page == true
 */
public class TDLib.ToggleStoryIsPostedToChatPage : TDObject {

    /**
     * Identifier of the chat that posted the story
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * Identifier of the story
     */
    public int32 story_id { get; construct set; }

    /**
     * Pass true to make the story accessible after expiration; pass false to
     * make it private
     */
    public bool is_posted_to_chat_page { get; construct set; }

    public ToggleStoryIsPostedToChatPage (
        int64 story_poster_chat_id,
        int32 story_id,
        bool is_posted_to_chat_page
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            story_id: story_id,
            is_posted_to_chat_page: is_posted_to_chat_page,
            tdlib_type: "toggleStoryIsPostedToChatPage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
