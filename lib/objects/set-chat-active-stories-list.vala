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
 * Changes story list in which stories from the chat are shown
 */
public class TDLib.SetChatActiveStoriesList : TDObject {

    /**
     * Identifier of the chat that posted stories
     */
    public int64 chat_id { get; construct set; }

    /**
     * New list for active stories posted by the chat
     */
    public StoryList story_list { get; construct set; }

    public SetChatActiveStoriesList (
        int64 chat_id,
        StoryList story_list
    ) {
        Object (
            chat_id: chat_id,
            story_list: story_list,
            tdlib_type: "setChatActiveStoriesList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
