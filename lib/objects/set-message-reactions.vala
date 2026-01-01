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
 * Sets reactions on a message; for bots only
 */
public class TDLib.SetMessageReactions : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Types of the reaction to set; pass an empty list to remove the
     * reactions
     */
    public Gee.ArrayList<ReactionType?> reaction_types { get; construct set; default = new Gee.ArrayList<ReactionType?> (); }

    /**
     * Pass true if the reactions are added with a big animation
     */
    public bool is_big { get; construct set; }

    public SetMessageReactions (
        int64 chat_id,
        int64 message_id,
        Gee.ArrayList<ReactionType?> reaction_types,
        bool is_big
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            reaction_types: reaction_types,
            is_big: is_big,
            tdlib_type: "setMessageReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
