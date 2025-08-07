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
 * Contains basic information about a forum topic
 */
public class TDLib.ForumTopicInfo : Error {

    /**
     * Identifier of the forum chat to which the topic belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Forum topic identifier of the topic
     */
    public int64 forum_topic_id { get; construct set; }

    /**
     * Message thread identifier of the topic
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * Name of the topic
     */
    public string name { get; construct set; }

    /**
     * Icon of the topic
     */
    public ForumTopicIcon icon { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the topic was created
     */
    public int32 creation_date { get; construct set; }

    /**
     * Identifier of the creator of the topic
     */
    public MessageSender creator_id { get; construct set; }

    /**
     * True, if the topic is the General topic list
     */
    public bool is_general { get; construct set; }

    /**
     * True, if the topic was created by the current user
     */
    public bool is_outgoing { get; construct set; }

    /**
     * True, if the topic is closed. If the topic is closed, then the user
     * must have can_manage_topics administrator right in the supergroup or
     * must be the creator of the topic to send messages there
     */
    public bool is_closed { get; construct set; }

    /**
     * True, if the topic is hidden above the topic list and closed; for
     * General topic only
     */
    public bool is_hidden { get; construct set; }

    public ForumTopicInfo (
        int64 chat_id,
        int64 forum_topic_id,
        int64 message_thread_id,
        string name,
        ForumTopicIcon icon,
        int32 creation_date,
        MessageSender creator_id,
        bool is_general,
        bool is_outgoing,
        bool is_closed,
        bool is_hidden
    ) {
        Object (
            chat_id: chat_id,
            forum_topic_id: forum_topic_id,
            message_thread_id: message_thread_id,
            name: name,
            icon: icon,
            creation_date: creation_date,
            creator_id: creator_id,
            is_general: is_general,
            is_outgoing: is_outgoing,
            is_closed: is_closed,
            is_hidden: is_hidden,
            tdlib_type: "forumTopicInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
