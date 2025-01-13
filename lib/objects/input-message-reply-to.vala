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
 * Contains information about the message or the story to be replied
 */
public abstract class TDLib.InputMessageReplyTo : Error {}

/**
 * Describes a message to be replied in the same chat and forum topic
 */
public class TDLib.InputMessageReplyToMessage : InputMessageReplyTo {

    /**
     * The identifier of the message to be replied in the same chat and forum
     * topic. A message can be replied in the same chat and forum topic only
     * if messageProperties.can_be_replied
     */
    public int64 message_id { get; construct set; }

    /**
     * Quote from the message to be replied; pass null if none. Must always
     * be null for replies in secret chats
     */
    public InputTextQuote quote { get; construct set; }

    public InputMessageReplyToMessage (
        int64 message_id,
        InputTextQuote quote
    ) {
        Object (
            message_id: message_id,
            quote: quote,
            tdlib_type: "inputMessageReplyToMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a message to be replied that is from a different chat or a
 * forum topic; not supported in secret chats
 */
public class TDLib.InputMessageReplyToExternalMessage : InputMessageReplyTo {

    /**
     * The identifier of the chat to which the message to be replied belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * The identifier of the message to be replied in the specified chat. A
     * message can be replied in another chat or forum topic only if
     * messageProperties.can_be_replied_in_another_chat
     */
    public int64 message_id { get; construct set; }

    /**
     * Quote from the message to be replied; pass null if none
     */
    public InputTextQuote quote { get; construct set; }

    public InputMessageReplyToExternalMessage (
        int64 chat_id,
        int64 message_id,
        InputTextQuote quote
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            quote: quote,
            tdlib_type: "inputMessageReplyToExternalMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a story to be replied
 */
public class TDLib.InputMessageReplyToStory : InputMessageReplyTo {

    /**
     * The identifier of the sender of the story. Currently, stories can be
     * replied only in the sender's chat and channel stories can't be replied
     */
    public int64 story_sender_chat_id { get; construct set; }

    /**
     * The identifier of the story
     */
    public int32 story_id { get; construct set; }

    public InputMessageReplyToStory (
        int64 story_sender_chat_id,
        int32 story_id
    ) {
        Object (
            story_sender_chat_id: story_sender_chat_id,
            story_id: story_id,
            tdlib_type: "inputMessageReplyToStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
