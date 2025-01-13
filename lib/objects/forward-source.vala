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
 * Contains information about the last message from which a new message
 * was forwarded last time
 */
public class TDLib.ForwardSource : Error {

    /**
     * Identifier of the chat to which the message that was forwarded
     * belonged; may be 0 if unknown
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message; may be 0 if unknown
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the sender of the message; may be null if unknown or the
     * new message was forwarded not to Saved Messages
     */
    public MessageSender? sender_id { get; construct set; }

    /**
     * Name of the sender of the message if the sender is hidden by their
     * privacy settings
     */
    public string sender_name { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message is sent; 0 if unknown
     */
    public int32 date { get; construct set; }

    /**
     * True, if the message that was forwarded is outgoing; always false if
     * sender is unknown
     */
    public bool is_outgoing { get; construct set; }

    public ForwardSource (
        int64 chat_id,
        int64 message_id,
        MessageSender? sender_id,
        string sender_name,
        int32 date,
        bool is_outgoing
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            sender_id: sender_id,
            sender_name: sender_name,
            date: date,
            is_outgoing: is_outgoing,
            tdlib_type: "forwardSource",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
