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
 * Returns information about the next messages of the specified type in
 * the chat split by days. Returns the results in reverse chronological
 * order. Can return partial result for the last returned day. Behavior
 * of this method depends on the value of the option "utc_time_offset"
 */
internal class TDLib.GetChatMessageCalendar : TDObject {

    /**
     * Identifier of the chat in which to return information about messages
     */
    public int64 chat_id { get; construct set; }

    /**
     * Filter for message content. Filters searchMessagesFilterEmpty,
     * searchMessagesFilterMention, searchMessagesFilterUnreadMention, and
     * searchMessagesFilterUnreadReaction are unsupported in this function
     */
    public SearchMessagesFilter filter { get; construct set; }

    /**
     * The message identifier from which to return information about
     * messages; use 0 to get results from the last message
     */
    public int64 from_message_id { get; construct set; }

    /**
     * If not0, only messages in the specified Saved Messages topic will be
     * considered; pass 0 to consider all messages, or for chats other than
     * Saved Messages
     */
    public int64 saved_messages_topic_id { get; construct set; }

    public GetChatMessageCalendar (
        int64 chat_id,
        SearchMessagesFilter filter,
        int64 from_message_id,
        int64 saved_messages_topic_id
    ) {
        Object (
            chat_id: chat_id,
            filter: filter,
            from_message_id: from_message_id,
            saved_messages_topic_id: saved_messages_topic_id,
            tdlib_type: "getChatMessageCalendar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
