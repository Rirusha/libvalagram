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
 * Returns information about the next messages of the specified type in
 * the chat split by days. Returns the results in reverse chronological
 * order. Can return partial result for the last returned day. Behavior
 * of this method depends on the value of the option "utc_time_offset"
 */
public class TDLib.GetChatMessageCalendar : TDObject {

    /**
     * Identifier of the chat in which to return information about messages
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass topic identifier to get the result only in specific topic; pass
     * null to get the result in all topics; forum topics and message threads
     * aren't supported
     */
    public MessageTopic topic_id { get; construct set; }

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

    public GetChatMessageCalendar (
        int64 chat_id,
        MessageTopic topic_id,
        SearchMessagesFilter filter,
        int64 from_message_id
    ) {
        Object (
            chat_id: chat_id,
            topic_id: topic_id,
            filter: filter,
            from_message_id: from_message_id,
            tdlib_type: "getChatMessageCalendar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
