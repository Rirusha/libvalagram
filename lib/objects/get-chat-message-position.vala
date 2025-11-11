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
 * which can be found by the specified filter in the chat and topic.
 * Cannot be used in secret chats
 */
public class TDLib.GetChatMessagePosition : TDObject {

    /**
     * Identifier of the chat in which to find message position
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass topic identifier to get position among messages only in specific
     * topic; pass null to get position among all chat messages; message
     * threads aren't supported
     */
    public MessageTopic topic_id { get; construct set; }

    /**
     * Filter for message content; searchMessagesFilterEmpty,
     * searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction,
     * and searchMessagesFilterFailedToSend are unsupported in this function
     */
    public SearchMessagesFilter filter { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    public GetChatMessagePosition (
        int64 chat_id,
        MessageTopic topic_id,
        SearchMessagesFilter filter,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            topic_id: topic_id,
            filter: filter,
            message_id: message_id,
            tdlib_type: "getChatMessagePosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
