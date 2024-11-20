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
 * Searches for messages in all chats except secret chats. Returns the
 * results in reverse chronological order (i.e., in order of decreasing
 * (date, chat_id, message_id)).
 * For optimal performance, the number of returned messages is chosen by
 * TDLib and can be smaller than the specified limit
 */
internal class TDLib.SearchMessages : TDObject {

    /**
     * Chat list in which to search messages; pass null to search in all
     * chats regardless of their chat list. Only Main and Archive chat lists
     * are supported
     */
    public ChatList chat_list { get; construct set; }

    /**
     * Pass true to search only for messages in channels
     */
    public bool only_in_channels { get; construct set; }

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of messages to be returned; up to 100. For optimal
     * performance, the number of returned messages is chosen by TDLib and
     * can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    /**
     * Additional filter for messages to search; pass null to search for all
     * messages. Filters searchMessagesFilterMention,
     * searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction,
     * searchMessagesFilterFailedToSend, and searchMessagesFilterPinned are
     * unsupported in this function
     */
    public SearchMessagesFilter filter { get; construct set; }

    /**
     * If not 0, the minimum date of the messages to return
     */
    public int32 min_date { get; construct set; }

    /**
     * If not 0, the maximum date of the messages to return
     */
    public int32 max_date { get; construct set; }

    public SearchMessages (
        ChatList chat_list,
        bool only_in_channels,
        string query,
        string offset,
        int32 limit,
        SearchMessagesFilter filter,
        int32 min_date,
        int32 max_date
    ) {
        Object (
            chat_list: chat_list,
            only_in_channels: only_in_channels,
            query: query,
            offset: offset,
            limit: limit,
            filter: filter,
            min_date: min_date,
            max_date: max_date,
            tdlib_type: "searchMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
