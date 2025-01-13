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
 * Changes chosen reaction on a story that has already been sent
 */
internal class TDLib.SetStoryReaction : TDObject {

    /**
     * The identifier of the sender of the story
     */
    public int64 story_sender_chat_id { get; construct set; }

    /**
     * The identifier of the story
     */
    public int32 story_id { get; construct set; }

    /**
     * Type of the reaction to set; pass null to remove the reaction. Custom
     * emoji reactions can be used only by Telegram Premium users. Paid
     * reactions can't be set
     */
    public ReactionType reaction_type { get; construct set; }

    /**
     * Pass true if the reaction needs to be added to recent reactions
     */
    public bool update_recent_reactions { get; construct set; }

    public SetStoryReaction (
        int64 story_sender_chat_id,
        int32 story_id,
        ReactionType reaction_type,
        bool update_recent_reactions
    ) {
        Object (
            story_sender_chat_id: story_sender_chat_id,
            story_id: story_id,
            reaction_type: reaction_type,
            update_recent_reactions: update_recent_reactions,
            tdlib_type: "setStoryReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
