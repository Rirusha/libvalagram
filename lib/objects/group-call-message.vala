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
 * Represents a message sent in a group call
 */
public class TDLib.GroupCallMessage : Error {

    /**
     * Unique message identifier within the group call
     */
    public int32 message_id { get; construct set; }

    /**
     * Identifier of the sender of the message
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message was sent
     */
    public int32 date { get; construct set; }

    /**
     * Text of the message. If empty, then the message is a paid reaction in
     * a live story
     */
    public FormattedText text { get; construct set; }

    /**
     * The number of Telegram Stars that were paid to send the message; for
     * live stories only
     */
    public int64 paid_message_star_count { get; construct set; }

    /**
     * True, if the message is sent by the owner of the call and must be
     * treated as a message of the maximum level; for live stories only
     */
    public bool is_from_owner { get; construct set; }

    /**
     * True, if the message can be deleted by the current user; for live
     * stories only
     */
    public bool can_be_deleted { get; construct set; }

    public GroupCallMessage (
        int32 message_id,
        MessageSender sender_id,
        int32 date,
        FormattedText text,
        int64 paid_message_star_count,
        bool is_from_owner,
        bool can_be_deleted
    ) {
        Object (
            message_id: message_id,
            sender_id: sender_id,
            date: date,
            text: text,
            paid_message_star_count: paid_message_star_count,
            is_from_owner: is_from_owner,
            can_be_deleted: can_be_deleted,
            tdlib_type: "groupCallMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
