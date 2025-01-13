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
 * Contains information about the origin of a story that was reposted
 */
public abstract class TDLib.StoryOrigin : Error {}

/**
 * The original story was a public story with known sender
 */
public class TDLib.StoryOriginPublicStory : StoryOrigin {

    /**
     * Identifier of the chat that posted original story
     */
    public int64 chat_id { get; construct set; }

    /**
     * Story identifier of the original story
     */
    public int32 story_id { get; construct set; }

    public StoryOriginPublicStory (
        int64 chat_id,
        int32 story_id
    ) {
        Object (
            chat_id: chat_id,
            story_id: story_id,
            tdlib_type: "storyOriginPublicStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The original story was sent by an unknown user
 */
public class TDLib.StoryOriginHiddenUser : StoryOrigin {

    /**
     * Name of the story sender
     */
    public string sender_name { get; construct set; }

    public StoryOriginHiddenUser (
        string sender_name
    ) {
        Object (
            sender_name: sender_name,
            tdlib_type: "storyOriginHiddenUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
