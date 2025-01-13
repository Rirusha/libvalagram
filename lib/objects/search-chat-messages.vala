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
 * Searches for messages with given words in the chat. Returns the
 * results in reverse chronological order, i.e. in order of decreasing
 * message_id. Cannot be used in secret chats with a non-empty query
 * {@link Client.search_secret_messages} must be used instead), or
 * without an enabled message database. For optimal performance, the
 * number of returned messages is chosen by TDLib and can be smaller than
 * the specified limit.
 * A combination of query, sender_id, filter and message_thread_id search
 * criteria is expected to be supported, only if it is required for
 * Telegram official application implementation
 */
public class TDLib.SearchChatMessages : TDObject {

    /**
     * Identifier of the chat in which to search messages
     */
    public int64 chat_id { get; construct set; }

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    /**
     * Identifier of the sender of messages to search for; pass null to
     * search for messages from any sender. Not supported in secret chats
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * Identifier of the message starting from which history must be fetched;
     * use 0 to get results from the last message
     */
    public int64 from_message_id { get; construct set; }

    /**
     * Specify 0 to get results from exactly the message from_message_id or a
     * negative offset to get the specified message and some newer messages
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of messages to be returned; must be positive and
     * can't be greater than 100. If the offset is negative, the limit must
     * be greater than -offset.
     * For optimal performance, the number of returned messages is chosen by
     * TDLib and can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    /**
     * Additional filter for messages to search; pass null to search for all
     * messages
     */
    public SearchMessagesFilter filter { get; construct set; }

    /**
     * If not 0, only messages in the specified thread will be returned;
     * supergroups only
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * If not 0, only messages in the specified Saved Messages topic will be
     * returned; pass 0 to return all messages, or for chats other than Saved
     * Messages
     */
    public int64 saved_messages_topic_id { get; construct set; }

    public SearchChatMessages (
        int64 chat_id,
        string query,
        MessageSender sender_id,
        int64 from_message_id,
        int32 offset,
        int32 limit,
        SearchMessagesFilter filter,
        int64 message_thread_id,
        int64 saved_messages_topic_id
    ) {
        Object (
            chat_id: chat_id,
            query: query,
            sender_id: sender_id,
            from_message_id: from_message_id,
            offset: offset,
            limit: limit,
            filter: filter,
            message_thread_id: message_thread_id,
            saved_messages_topic_id: saved_messages_topic_id,
            tdlib_type: "searchChatMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
