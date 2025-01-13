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
 * Returns messages in a Saved Messages topic. The messages are returned
 * in reverse chronological order (i.e., in order of decreasing
 * message_id)
 */
internal class TDLib.GetSavedMessagesTopicHistory : TDObject {

    /**
     * Identifier of Saved Messages topic which messages will be fetched
     */
    public int64 saved_messages_topic_id { get; construct set; }

    /**
     * Identifier of the message starting from which messages must be
     * fetched; use 0 to get results from the last message
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

    public GetSavedMessagesTopicHistory (
        int64 saved_messages_topic_id,
        int64 from_message_id,
        int32 offset,
        int32 limit
    ) {
        Object (
            saved_messages_topic_id: saved_messages_topic_id,
            from_message_id: from_message_id,
            offset: offset,
            limit: limit,
            tdlib_type: "getSavedMessagesTopicHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
