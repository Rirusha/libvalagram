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
 * Blocks an original sender of a message in the Replies chat
 */
internal class TDLib.BlockMessageSenderFromReplies : TDObject {

    /**
     * The identifier of an incoming message in the Replies chat
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true to delete the message
     */
    public bool delete_message { get; construct set; }

    /**
     * Pass true to delete all messages from the same sender
     */
    public bool delete_all_messages { get; construct set; }

    /**
     * Pass true to report the sender to the Telegram moderators
     */
    public bool report_spam { get; construct set; }

    public BlockMessageSenderFromReplies (
        int64 message_id,
        bool delete_message,
        bool delete_all_messages,
        bool report_spam
    ) {
        Object (
            message_id: message_id,
            delete_message: delete_message,
            delete_all_messages: delete_all_messages,
            report_spam: report_spam,
            tdlib_type: "blockMessageSenderFromReplies",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
