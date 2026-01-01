/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Returns reactions added for a message, along with their sender
 */
public class TDLib.GetMessageAddedReactions : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message. Use
     * message.interaction_info.reactions.can_get_added_reactions to check
     * whether added reactions can be received for the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Type of the reactions to return; pass null to return all added
     * reactions; reactionTypePaid isn't supported
     */
    public ReactionType reaction_type { get; construct set; }

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of reactions to be returned; must be positive and
     * can't be greater than 100
     */
    public int32 limit { get; construct set; }

    public GetMessageAddedReactions (
        int64 chat_id,
        int64 message_id,
        ReactionType reaction_type,
        string offset,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            reaction_type: reaction_type,
            offset: offset,
            limit: limit,
            tdlib_type: "getMessageAddedReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
