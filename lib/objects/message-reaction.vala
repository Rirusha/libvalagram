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
 * Contains information about a reaction to a message
 */
public class TDLib.MessageReaction : Error {

    /**
     * Type of the reaction
     */
    public ReactionType type_ { get; construct set; }

    /**
     * Number of times the reaction was added
     */
    public int32 total_count { get; construct set; }

    /**
     * True, if the reaction is chosen by the current user
     */
    public bool is_chosen { get; construct set; }

    /**
     * Identifier of the message sender used by the current user to add the
     * reaction; may be null if unknown or the reaction isn't chosen
     */
    public MessageSender? used_sender_id { get; construct set; }

    /**
     * Identifiers of at most 3 recent message senders, added the reaction;
     * available in private, basic group and supergroup chats
     */
    public Gee.ArrayList<MessageSender?> recent_sender_ids { get; construct set; default = new Gee.ArrayList<MessageSender?> (); }

    public MessageReaction (
        ReactionType type_,
        int32 total_count,
        bool is_chosen,
        MessageSender? used_sender_id,
        Gee.ArrayList<MessageSender?> recent_sender_ids
    ) {
        Object (
            type_: type_,
            total_count: total_count,
            is_chosen: is_chosen,
            used_sender_id: used_sender_id,
            recent_sender_ids: recent_sender_ids,
            tdlib_type: "messageReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
