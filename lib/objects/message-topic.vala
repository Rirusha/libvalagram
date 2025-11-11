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
 * Describes a topic of messages in a chat
 */
public abstract class TDLib.MessageTopic : Error {}

/**
 * A topic in a non-forum supergroup chat
 */
public class TDLib.MessageTopicThread : MessageTopic {

    /**
     * Unique identifier of the message thread
     */
    public int64 message_thread_id { get; construct set; }

    public MessageTopicThread (
        int64 message_thread_id
    ) {
        Object (
            message_thread_id: message_thread_id,
            tdlib_type: "messageTopicThread",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A topic in a forum supergroup chat or a chat with a bot
 */
public class TDLib.MessageTopicForum : MessageTopic {

    /**
     * Unique identifier of the forum topic
     */
    public int32 forum_topic_id { get; construct set; }

    public MessageTopicForum (
        int32 forum_topic_id
    ) {
        Object (
            forum_topic_id: forum_topic_id,
            tdlib_type: "messageTopicForum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A topic in a channel direct messages chat administered by the current
 * user
 */
public class TDLib.MessageTopicDirectMessages : MessageTopic {

    /**
     * Unique identifier of the topic
     */
    public int64 direct_messages_chat_topic_id { get; construct set; }

    public MessageTopicDirectMessages (
        int64 direct_messages_chat_topic_id
    ) {
        Object (
            direct_messages_chat_topic_id: direct_messages_chat_topic_id,
            tdlib_type: "messageTopicDirectMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A topic in Saved Messages chat
 */
public class TDLib.MessageTopicSavedMessages : MessageTopic {

    /**
     * Unique identifier of the Saved Messages topic
     */
    public int64 saved_messages_topic_id { get; construct set; }

    public MessageTopicSavedMessages (
        int64 saved_messages_topic_id
    ) {
        Object (
            saved_messages_topic_id: saved_messages_topic_id,
            tdlib_type: "messageTopicSavedMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
