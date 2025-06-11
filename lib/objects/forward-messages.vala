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
 * Forwards previously sent messages. Returns the forwarded messages in
 * the same order as the message identifiers passed in message_ids. If a
 * message can't be forwarded, null will be returned instead of the
 * message
 */
public class TDLib.ForwardMessages : TDObject {

    /**
     * Identifier of the chat to which to forward messages
     */
    public int64 chat_id { get; construct set; }

    /**
     * If not 0, the message thread identifier in which the message will be
     * sent; for forum threads only
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * Identifier of the chat from which to forward messages
     */
    public int64 from_chat_id { get; construct set; }

    /**
     * Identifiers of the messages to forward. Message identifiers must be in
     * a strictly increasing order. At most 100 messages can be forwarded
     * simultaneously. A message can be forwarded only if
     * messageProperties.can_be_forwarded
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Options to be used to send the messages; pass null to use default
     * options
     */
    public MessageSendOptions options { get; construct set; }

    /**
     * Pass true to copy content of the messages without reference to the
     * original sender. Always true if the messages are forwarded to a secret
     * chat or are local.
     * Use messageProperties.can_be_copied and
     * messageProperties.can_be_copied_to_secret_chat to check whether the
     * message is suitable
     */
    public bool send_copy { get; construct set; }

    /**
     * Pass true to remove media captions of message copies. Ignored if
     * send_copy is false
     */
    public bool remove_caption { get; construct set; }

    public ForwardMessages (
        int64 chat_id,
        int64 message_thread_id,
        int64 from_chat_id,
        Gee.ArrayList<int64?> message_ids,
        MessageSendOptions options,
        bool send_copy,
        bool remove_caption
    ) {
        Object (
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            from_chat_id: from_chat_id,
            message_ids: message_ids,
            options: options,
            send_copy: send_copy,
            remove_caption: remove_caption,
            tdlib_type: "forwardMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
