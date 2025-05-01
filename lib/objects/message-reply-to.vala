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
 * Contains information about the message or the story a message is
 * replying to
 */
public abstract class TDLib.MessageReplyTo : Error {}

/**
 * Describes a message replied by a given message
 */
public class TDLib.MessageReplyToMessage : MessageReplyTo {

    /**
     * The identifier of the chat to which the message belongs; may be 0 if
     * the replied message is in unknown chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * The identifier of the message; may be 0 if the replied message is in
     * unknown chat
     */
    public int64 message_id { get; construct set; }

    /**
     * Chosen quote from the replied message; may be null if none
     */
    public TextQuote? quote { get; construct set; }

    /**
     * Information about origin of the message if the message was from
     * another chat or topic; may be null for messages from the same chat
     */
    public MessageOrigin? origin { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message was sent if the
     * message was from another chat or topic; 0 for messages from the same
     * chat
     */
    public int32 origin_send_date { get; construct set; }

    /**
     * Media content of the message if the message was from another chat or
     * topic; may be null for messages from the same chat and messages
     * without media.
     * Can be only one of the following types: messageAnimation,
     * messageAudio, messageContact, messageDice, messageDocument,
     * messageGame, messageGiveaway, messageGiveawayWinners,
     * messageInvoice, messageLocation, messagePaidMedia, messagePhoto,
     * messagePoll, messageSticker, messageStory, messageText (for link
     * preview), messageVenue, messageVideo,
     * messageVideoNote, or messageVoiceNote
     */
    public MessageContent? content { get; construct set; }

    public MessageReplyToMessage (
        int64 chat_id,
        int64 message_id,
        TextQuote? quote,
        MessageOrigin? origin,
        int32 origin_send_date,
        MessageContent? content
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            quote: quote,
            origin: origin,
            origin_send_date: origin_send_date,
            content: content,
            tdlib_type: "messageReplyToMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a story replied by a given message
 */
public class TDLib.MessageReplyToStory : MessageReplyTo {

    /**
     * The identifier of the poster of the story
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * The identifier of the story
     */
    public int32 story_id { get; construct set; }

    public MessageReplyToStory (
        int64 story_poster_chat_id,
        int32 story_id
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            story_id: story_id,
            tdlib_type: "messageReplyToStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
