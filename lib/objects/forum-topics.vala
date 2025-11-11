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
 * Describes a list of forum topics
 */
public class TDLib.ForumTopics : Error {

    /**
     * Approximate total number of forum topics found
     */
    public int32 total_count { get; construct set; }

    /**
     * List of forum topics
     */
    public Gee.ArrayList<ForumTopic?> topics { get; construct set; default = new Gee.ArrayList<ForumTopic?> (); }

    /**
     * Offset date for the next {@link Client.get_forum_topics} request
     */
    public int32 next_offset_date { get; construct set; }

    /**
     * Offset message identifier for the next {@link Client.get_forum_topics}
     * request
     */
    public int64 next_offset_message_id { get; construct set; }

    /**
     * Offset forum topic identifier for the next
     * {@link Client.get_forum_topics} request
     */
    public int32 next_offset_forum_topic_id { get; construct set; }

    public ForumTopics (
        int32 total_count,
        Gee.ArrayList<ForumTopic?> topics,
        int32 next_offset_date,
        int64 next_offset_message_id,
        int32 next_offset_forum_topic_id
    ) {
        Object (
            total_count: total_count,
            topics: topics,
            next_offset_date: next_offset_date,
            next_offset_message_id: next_offset_message_id,
            next_offset_forum_topic_id: next_offset_forum_topic_id,
            tdlib_type: "forumTopics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
