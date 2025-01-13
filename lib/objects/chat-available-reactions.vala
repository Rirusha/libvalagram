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
 * Describes reactions available in the chat
 */
public abstract class TDLib.ChatAvailableReactions : Error {}

/**
 * All reactions are available in the chat, excluding the paid reaction
 * and custom reactions in channel chats
 */
public class TDLib.ChatAvailableReactionsAll : ChatAvailableReactions {

    /**
     * The maximum allowed number of reactions per message; 1-11
     */
    public int32 max_reaction_count { get; construct set; }

    public ChatAvailableReactionsAll (
        int32 max_reaction_count
    ) {
        Object (
            max_reaction_count: max_reaction_count,
            tdlib_type: "chatAvailableReactionsAll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Only specific reactions are available in the chat
 */
public class TDLib.ChatAvailableReactionsSome : ChatAvailableReactions {

    /**
     * The list of reactions
     */
    public Gee.ArrayList<ReactionType?> reactions { get; construct set; default = new Gee.ArrayList<ReactionType?> (); }

    /**
     * The maximum allowed number of reactions per message; 1-11
     */
    public int32 max_reaction_count { get; construct set; }

    public ChatAvailableReactionsSome (
        Gee.ArrayList<ReactionType?> reactions,
        int32 max_reaction_count
    ) {
        Object (
            reactions: reactions,
            max_reaction_count: max_reaction_count,
            tdlib_type: "chatAvailableReactionsSome",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
