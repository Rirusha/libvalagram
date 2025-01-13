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
 * Returns approximate 1-based position of a message among messages,
 * which can be found by the specified filter in the chat. Cannot be used
 * in secret chats
 */
public class TDLib.GetChatMessagePosition : TDObject {

    /**
     * Identifier of the chat in which to find message position
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Filter for message content; searchMessagesFilterEmpty,
     * searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction,
     * and searchMessagesFilterFailedToSend are unsupported in this function
     */
    public SearchMessagesFilter filter { get; construct set; }

    /**
     * If not 0, only messages in the specified thread will be considered;
     * supergroups only
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * If not 0, only messages in the specified Saved Messages topic will be
     * considered; pass 0 to consider all relevant messages, or for chats
     * other than Saved Messages
     */
    public int64 saved_messages_topic_id { get; construct set; }

    public GetChatMessagePosition (
        int64 chat_id,
        int64 message_id,
        SearchMessagesFilter filter,
        int64 message_thread_id,
        int64 saved_messages_topic_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            filter: filter,
            message_thread_id: message_thread_id,
            saved_messages_topic_id: saved_messages_topic_id,
            tdlib_type: "getChatMessagePosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
