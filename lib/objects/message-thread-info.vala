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
 * Contains information about a message thread
 */
public class TDLib.MessageThreadInfo : Error {

    /**
     * Identifier of the chat to which the message thread belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message thread identifier, unique within the chat
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * Information about the message thread; may be null for forum topic
     * threads
     */
    public MessageReplyInfo? reply_info { get; construct set; }

    /**
     * Approximate number of unread messages in the message thread
     */
    public int32 unread_message_count { get; construct set; }

    /**
     * The messages from which the thread starts. The messages are returned
     * in reverse chronological order (i.e., in order of decreasing
     * message_id)
     */
    public Gee.ArrayList<Message?> messages { get; construct set; default = new Gee.ArrayList<Message?> (); }

    /**
     * A draft of a message in the message thread; may be null if none
     */
    public DraftMessage? draft_message { get; construct set; }

    public MessageThreadInfo (
        int64 chat_id,
        int64 message_thread_id,
        MessageReplyInfo? reply_info,
        int32 unread_message_count,
        Gee.ArrayList<Message?> messages,
        DraftMessage? draft_message
    ) {
        Object (
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            reply_info: reply_info,
            unread_message_count: unread_message_count,
            messages: messages,
            draft_message: draft_message,
            tdlib_type: "messageThreadInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
