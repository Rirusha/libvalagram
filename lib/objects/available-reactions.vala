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
 * Represents a list of reactions that can be added to a message
 */
public class TDLib.AvailableReactions : Error {

    /**
     * List of reactions to be shown at the top
     */
    public Gee.ArrayList<AvailableReaction?> top_reactions { get; construct set; default = new Gee.ArrayList<AvailableReaction?> (); }

    /**
     * List of recently used reactions
     */
    public Gee.ArrayList<AvailableReaction?> recent_reactions { get; construct set; default = new Gee.ArrayList<AvailableReaction?> (); }

    /**
     * List of popular reactions
     */
    public Gee.ArrayList<AvailableReaction?> popular_reactions { get; construct set; default = new Gee.ArrayList<AvailableReaction?> (); }

    /**
     * True, if any custom emoji reaction can be added by Telegram Premium
     * subscribers
     */
    public bool allow_custom_emoji { get; construct set; }

    /**
     * True, if the reactions will be tags and the message can be found by
     * them
     */
    public bool are_tags { get; construct set; }

    /**
     * The reason why the current user can't add reactions to the message,
     * despite some other users can; may be null if none
     */
    public ReactionUnavailabilityReason? unavailability_reason { get; construct set; }

    public AvailableReactions (
        Gee.ArrayList<AvailableReaction?> top_reactions,
        Gee.ArrayList<AvailableReaction?> recent_reactions,
        Gee.ArrayList<AvailableReaction?> popular_reactions,
        bool allow_custom_emoji,
        bool are_tags,
        ReactionUnavailabilityReason? unavailability_reason
    ) {
        Object (
            top_reactions: top_reactions,
            recent_reactions: recent_reactions,
            popular_reactions: popular_reactions,
            allow_custom_emoji: allow_custom_emoji,
            are_tags: are_tags,
            unavailability_reason: unavailability_reason,
            tdlib_type: "availableReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
