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
 * Adds a local message to a chat. The message is persistent across
 * application restarts only if the message database is used. Returns the
 * added message
 */
internal class TDLib.AddLocalMessage : TDObject {

    /**
     * Target chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the sender of the message
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * Information about the message or story to be replied; pass null if
     * none
     */
    public InputMessageReplyTo reply_to { get; construct set; }

    /**
     * Pass true to disable notification for the message
     */
    public bool disable_notification { get; construct set; }

    /**
     * The content of the message to be added
     */
    public InputMessageContent input_message_content { get; construct set; }

    public AddLocalMessage (
        int64 chat_id,
        MessageSender sender_id,
        InputMessageReplyTo reply_to,
        bool disable_notification,
        InputMessageContent input_message_content
    ) {
        Object (
            chat_id: chat_id,
            sender_id: sender_id,
            reply_to: reply_to,
            disable_notification: disable_notification,
            input_message_content: input_message_content,
            tdlib_type: "addLocalMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
