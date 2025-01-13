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
 * Describes a forum topic
 */
public class TDLib.ForumTopic : Error {

    /**
     * Basic information about the topic
     */
    public ForumTopicInfo info { get; construct set; }

    /**
     * Last message in the topic; may be null if unknown
     */
    public Message? last_message { get; construct set; }

    /**
     * True, if the topic is pinned in the topic list
     */
    public bool is_pinned { get; construct set; }

    /**
     * Number of unread messages in the topic
     */
    public int32 unread_count { get; construct set; }

    /**
     * Identifier of the last read incoming message
     */
    public int64 last_read_inbox_message_id { get; construct set; }

    /**
     * Identifier of the last read outgoing message
     */
    public int64 last_read_outbox_message_id { get; construct set; }

    /**
     * Number of unread messages with a mention/reply in the topic
     */
    public int32 unread_mention_count { get; construct set; }

    /**
     * Number of messages with unread reactions in the topic
     */
    public int32 unread_reaction_count { get; construct set; }

    /**
     * Notification settings for the topic
     */
    public ChatNotificationSettings notification_settings { get; construct set; }

    /**
     * A draft of a message in the topic; may be null if none
     */
    public DraftMessage? draft_message { get; construct set; }

    public ForumTopic (
        ForumTopicInfo info,
        Message? last_message,
        bool is_pinned,
        int32 unread_count,
        int64 last_read_inbox_message_id,
        int64 last_read_outbox_message_id,
        int32 unread_mention_count,
        int32 unread_reaction_count,
        ChatNotificationSettings notification_settings,
        DraftMessage? draft_message
    ) {
        Object (
            info: info,
            last_message: last_message,
            is_pinned: is_pinned,
            unread_count: unread_count,
            last_read_inbox_message_id: last_read_inbox_message_id,
            last_read_outbox_message_id: last_read_outbox_message_id,
            unread_mention_count: unread_mention_count,
            unread_reaction_count: unread_reaction_count,
            notification_settings: notification_settings,
            draft_message: draft_message,
            tdlib_type: "forumTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
