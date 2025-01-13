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
 * Returns approximate number of messages of the specified type in the
 * chat
 */
internal class TDLib.GetChatMessageCount : TDObject {

    /**
     * Identifier of the chat in which to count messages
     */
    public int64 chat_id { get; construct set; }

    /**
     * Filter for message content; searchMessagesFilterEmpty is unsupported
     * in this function
     */
    public SearchMessagesFilter filter { get; construct set; }

    /**
     * If not 0, only messages in the specified Saved Messages topic will be
     * counted; pass 0 to count all messages, or for chats other than Saved
     * Messages
     */
    public int64 saved_messages_topic_id { get; construct set; }

    /**
     * Pass true to get the number of messages without sending network
     * requests, or -1 if the number of messages is unknown locally
     */
    public bool return_local { get; construct set; }

    public GetChatMessageCount (
        int64 chat_id,
        SearchMessagesFilter filter,
        int64 saved_messages_topic_id,
        bool return_local
    ) {
        Object (
            chat_id: chat_id,
            filter: filter,
            saved_messages_topic_id: saved_messages_topic_id,
            return_local: return_local,
            tdlib_type: "getChatMessageCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
