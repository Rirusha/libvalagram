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
 * Returns messages in a chat. The messages are returned in reverse
 * chronological order (i.e., in order of decreasing message_id).
 * For optimal performance, the number of returned messages is chosen by
 * TDLib. This is an offline request if only_local is true
 */
internal class TDLib.GetChatHistory : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message starting from which history must be fetched;
     * use 0 to get results from the last message
     */
    public int64 from_message_id { get; construct set; }

    /**
     * Specify 0 to get results from exactly the message from_message_id or a
     * negative offset up to 99 to get additionally some newer messages
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of messages to be returned; must be positive and
     * can't be greater than 100. If the offset is negative, the limit must
     * be greater than or equal to -offset.
     * For optimal performance, the number of returned messages is chosen by
     * TDLib and can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    /**
     * Pass true to get only messages that are available without sending
     * network requests
     */
    public bool only_local { get; construct set; }

    public GetChatHistory (
        int64 chat_id,
        int64 from_message_id,
        int32 offset,
        int32 limit,
        bool only_local
    ) {
        Object (
            chat_id: chat_id,
            from_message_id: from_message_id,
            offset: offset,
            limit: limit,
            only_local: only_local,
            tdlib_type: "getChatHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
