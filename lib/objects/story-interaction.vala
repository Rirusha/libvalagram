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
 * Represents interaction with a story
 */
public class TDLib.StoryInteraction : Error {

    /**
     * Identifier of the user or chat that made the interaction
     */
    public MessageSender actor_id { get; construct set; }

    /**
     * Approximate point in time (Unix timestamp) when the interaction
     * happened
     */
    public int32 interaction_date { get; construct set; }

    /**
     * Block list to which the actor is added; may be null if none or for
     * chat stories
     */
    public BlockList? block_list { get; construct set; }

    /**
     * Type of the interaction
     */
    public StoryInteractionType type_ { get; construct set; }

    public StoryInteraction (
        MessageSender actor_id,
        int32 interaction_date,
        BlockList? block_list,
        StoryInteractionType type_
    ) {
        Object (
            actor_id: actor_id,
            interaction_date: interaction_date,
            block_list: block_list,
            type_: type_,
            tdlib_type: "storyInteraction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
