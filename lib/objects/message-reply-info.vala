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
 * Contains information about replies to a message
 */
public class TDLib.MessageReplyInfo : Error {

    /**
     * Number of times the message was directly or indirectly replied
     */
    public int32 reply_count { get; construct set; }

    /**
     * Identifiers of at most 3 recent repliers to the message; available in
     * channels with a discussion supergroup. The users and chats are
     * expected to be inaccessible: only their photo and name will be
     * available
     */
    public Gee.ArrayList<MessageSender?> recent_replier_ids { get; construct set; default = new Gee.ArrayList<MessageSender?> (); }

    /**
     * Identifier of the last read incoming reply to the message
     */
    public int64 last_read_inbox_message_id { get; construct set; }

    /**
     * Identifier of the last read outgoing reply to the message
     */
    public int64 last_read_outbox_message_id { get; construct set; }

    /**
     * Identifier of the last reply to the message
     */
    public int64 last_message_id { get; construct set; }

    public MessageReplyInfo (
        int32 reply_count,
        Gee.ArrayList<MessageSender?> recent_replier_ids,
        int64 last_read_inbox_message_id,
        int64 last_read_outbox_message_id,
        int64 last_message_id
    ) {
        Object (
            reply_count: reply_count,
            recent_replier_ids: recent_replier_ids,
            last_read_inbox_message_id: last_read_inbox_message_id,
            last_read_outbox_message_id: last_read_outbox_message_id,
            last_message_id: last_message_id,
            tdlib_type: "messageReplyInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
