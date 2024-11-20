/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Returns sparse positions of messages of the specified type in the chat
 * to be used for shared media scroll implementation. Returns the results
 * in reverse chronological order (i.e., in order of decreasing
 * message_id).
 * Cannot be used in secret chats or with
 * searchMessagesFilterFailedToSend filter without an enabled message
 * database
 */
internal class TDLib.GetChatSparseMessagePositions : TDObject {

    /**
     * Identifier of the chat in which to return information about message
     * positions
     */
    public int64 chat_id { get; construct set; }

    /**
     * Filter for message content. Filters searchMessagesFilterEmpty,
     * searchMessagesFilterMention, searchMessagesFilterUnreadMention, and
     * searchMessagesFilterUnreadReaction are unsupported in this function
     */
    public SearchMessagesFilter filter { get; construct set; }

    /**
     * The message identifier from which to return information about message
     * positions
     */
    public int64 from_message_id { get; construct set; }

    /**
     * The expected number of message positions to be returned; 50-2000. A
     * smaller number of positions can be returned, if there are not enough
     * appropriate messages
     */
    public int32 limit { get; construct set; }

    /**
     * If not 0, only messages in the specified Saved Messages topic will be
     * considered; pass 0 to consider all messages, or for chats other than
     * Saved Messages
     */
    public int64 saved_messages_topic_id { get; construct set; }

    public GetChatSparseMessagePositions (
        int64 chat_id,
        SearchMessagesFilter filter,
        int64 from_message_id,
        int32 limit,
        int64 saved_messages_topic_id
    ) {
        Object (
            chat_id: chat_id,
            filter: filter,
            from_message_id: from_message_id,
            limit: limit,
            saved_messages_topic_id: saved_messages_topic_id,
            tdlib_type: "getChatSparseMessagePositions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
