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
 * Contains a list of reactions added to a message
 */
public class TDLib.MessageReactions : Error {

    /**
     * List of added reactions
     */
    public Gee.ArrayList<MessageReaction?> reactions { get; construct set; default = new Gee.ArrayList<MessageReaction?> (); }

    /**
     * True, if the reactions are tags and Telegram Premium users can filter
     * messages by them
     */
    public bool are_tags { get; construct set; }

    /**
     * Information about top users that added the paid reaction
     */
    public Gee.ArrayList<PaidReactor?> paid_reactors { get; construct set; default = new Gee.ArrayList<PaidReactor?> (); }

    /**
     * True, if the list of added reactions is available using
     * getMessageAddedReactions
     */
    public bool can_get_added_reactions { get; construct set; }

    public MessageReactions (
        Gee.ArrayList<MessageReaction?> reactions,
        bool are_tags,
        Gee.ArrayList<PaidReactor?> paid_reactors,
        bool can_get_added_reactions
    ) {
        Object (
            reactions: reactions,
            are_tags: are_tags,
            paid_reactors: paid_reactors,
            can_get_added_reactions: can_get_added_reactions,
            tdlib_type: "messageReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
