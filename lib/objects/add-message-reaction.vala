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
 * Adds a reaction or a tag to a message. Use
 * {@link Client.get_message_available_reactions} to receive the list of
 * available reactions for the message
 */
public class TDLib.AddMessageReaction : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Type of the reaction to add. Use
     * {@link Client.add_pending_paid_message_reaction} instead to add the
     * paid reaction
     */
    public ReactionType reaction_type { get; construct set; }

    /**
     * Pass true if the reaction is added with a big animation
     */
    public bool is_big { get; construct set; }

    /**
     * Pass true if the reaction needs to be added to recent reactions; tags
     * are never added to the list of recent reactions
     */
    public bool update_recent_reactions { get; construct set; }

    public AddMessageReaction (
        int64 chat_id,
        int64 message_id,
        ReactionType reaction_type,
        bool is_big,
        bool update_recent_reactions
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            reaction_type: reaction_type,
            is_big: is_big,
            update_recent_reactions: update_recent_reactions,
            tdlib_type: "addMessageReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
