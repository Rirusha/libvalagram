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
 * Returns a story
 */
public class TDLib.GetStory : TDObject {

    /**
     * Identifier of the chat that posted the story
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    /**
     * Pass true to get only locally available information without sending
     * network requests
     */
    public bool only_local { get; construct set; }

    public GetStory (
        int64 story_poster_chat_id,
        int32 story_id,
        bool only_local
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            story_id: story_id,
            only_local: only_local,
            tdlib_type: "getStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
