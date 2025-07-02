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
 * Contains information about a topic in a channel direct messages chat
 * administered by the current user
 */
public class TDLib.DirectMessagesChatTopic : Error {

    /**
     * Identifier of the chat to which the topic belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Unique topic identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the user or chat that sends the messages to the topic
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * A parameter used to determine order of the topic in the topic list.
     * Topics must be sorted by the order in descending order
     */
    public int64 order { get; construct set; }

    /**
     * True, if the other party can send unpaid messages even if the chat has
     * paid messages enabled
     */
    public bool can_send_unpaid_messages { get; construct set; }

    /**
     * True, if the forum topic is marked as unread
     */
    public bool is_marked_as_unread { get; construct set; }

    /**
     * Number of unread messages in the chat
     */
    public int64 unread_count { get; construct set; }

    /**
     * Identifier of the last read incoming message
     */
    public int64 last_read_inbox_message_id { get; construct set; }

    /**
     * Identifier of the last read outgoing message
     */
    public int64 last_read_outbox_message_id { get; construct set; }

    /**
     * Number of messages with unread reactions in the chat
     */
    public int64 unread_reaction_count { get; construct set; }

    /**
     * Last message in the topic; may be null if none or unknown
     */
    public Message? last_message { get; construct set; }

    /**
     * A draft of a message in the topic; may be null if none
     */
    public DraftMessage? draft_message { get; construct set; }

    public DirectMessagesChatTopic (
        int64 chat_id,
        int64 id_,
        MessageSender sender_id,
        int64 order,
        bool can_send_unpaid_messages,
        bool is_marked_as_unread,
        int64 unread_count,
        int64 last_read_inbox_message_id,
        int64 last_read_outbox_message_id,
        int64 unread_reaction_count,
        Message? last_message,
        DraftMessage? draft_message
    ) {
        Object (
            chat_id: chat_id,
            id_: id_,
            sender_id: sender_id,
            order: order,
            can_send_unpaid_messages: can_send_unpaid_messages,
            is_marked_as_unread: is_marked_as_unread,
            unread_count: unread_count,
            last_read_inbox_message_id: last_read_inbox_message_id,
            last_read_outbox_message_id: last_read_outbox_message_id,
            unread_reaction_count: unread_reaction_count,
            last_message: last_message,
            draft_message: draft_message,
            tdlib_type: "directMessagesChatTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
