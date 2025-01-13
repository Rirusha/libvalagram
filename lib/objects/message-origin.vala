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
 * Contains information about the origin of a message
 */
public abstract class TDLib.MessageOrigin : Error {}

/**
 * The message was originally sent by a known user
 */
public class TDLib.MessageOriginUser : MessageOrigin {

    /**
     * Identifier of the user that originally sent the message
     */
    public int64 sender_user_id { get; construct set; }

    public MessageOriginUser (
        int64 sender_user_id
    ) {
        Object (
            sender_user_id: sender_user_id,
            tdlib_type: "messageOriginUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message was originally sent by a user, which is hidden by their
 * privacy settings
 */
public class TDLib.MessageOriginHiddenUser : MessageOrigin {

    /**
     * Name of the sender
     */
    public string sender_name { get; construct set; }

    public MessageOriginHiddenUser (
        string sender_name
    ) {
        Object (
            sender_name: sender_name,
            tdlib_type: "messageOriginHiddenUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message was originally sent on behalf of a chat
 */
public class TDLib.MessageOriginChat : MessageOrigin {

    /**
     * Identifier of the chat that originally sent the message
     */
    public int64 sender_chat_id { get; construct set; }

    /**
     * For messages originally sent by an anonymous chat administrator,
     * original message author signature
     */
    public string author_signature { get; construct set; }

    public MessageOriginChat (
        int64 sender_chat_id,
        string author_signature
    ) {
        Object (
            sender_chat_id: sender_chat_id,
            author_signature: author_signature,
            tdlib_type: "messageOriginChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message was originally a post in a channel
 */
public class TDLib.MessageOriginChannel : MessageOrigin {

    /**
     * Identifier of the channel chat to which the message was originally
     * sent
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier of the original message
     */
    public int64 message_id { get; construct set; }

    /**
     * Original post author signature
     */
    public string author_signature { get; construct set; }

    public MessageOriginChannel (
        int64 chat_id,
        int64 message_id,
        string author_signature
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            author_signature: author_signature,
            tdlib_type: "messageOriginChannel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
