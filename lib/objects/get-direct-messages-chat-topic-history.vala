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
 * Returns messages in the topic in a channel direct messages chat
 * administered by the current user. The messages are returned in reverse
 * chronological order (i.e., in order of decreasing message_id)
 */
public class TDLib.GetDirectMessagesChatTopicHistory : TDObject {

    /**
     * Chat identifier of the channel direct messages chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the topic which messages will be fetched
     */
    public int64 topic_id { get; construct set; }

    /**
     * Identifier of the message starting from which messages must be
     * fetched; use 0 to get results from the last message
     */
    public int64 from_message_id { get; construct set; }

    /**
     * Specify 0 to get results from exactly the message from_message_id or a
     * negative number from -99 to -1 to get additionally -offset newer
     * messages
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of messages to be returned; must be positive and
     * can't be greater than 100. If the offset is negative, then the limit
     * must be greater than or equal to -offset.
     * For optimal performance, the number of returned messages is chosen by
     * TDLib and can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    public GetDirectMessagesChatTopicHistory (
        int64 chat_id,
        int64 topic_id,
        int64 from_message_id,
        int32 offset,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            topic_id: topic_id,
            from_message_id: from_message_id,
            offset: offset,
            limit: limit,
            tdlib_type: "getDirectMessagesChatTopicHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
