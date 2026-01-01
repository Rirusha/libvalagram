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
 * Describes type of interaction with a story
 */
public abstract class TDLib.StoryInteractionType : Error {}

/**
 * A view of the story
 */
public class TDLib.StoryInteractionTypeView : StoryInteractionType {

    /**
     * Type of the reaction that was chosen by the viewer; may be null if
     * none
     */
    public ReactionType? chosen_reaction_type { get; construct set; }

    public StoryInteractionTypeView (
        ReactionType? chosen_reaction_type
    ) {
        Object (
            chosen_reaction_type: chosen_reaction_type,
            tdlib_type: "storyInteractionTypeView",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forward of the story as a message
 */
public class TDLib.StoryInteractionTypeForward : StoryInteractionType {

    /**
     * The message with story forward
     */
    public new Message message { get; construct set; }

    public StoryInteractionTypeForward (
        Message message
    ) {
        Object (
            message: message,
            tdlib_type: "storyInteractionTypeForward",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A repost of the story as a story
 */
public class TDLib.StoryInteractionTypeRepost : StoryInteractionType {

    /**
     * The reposted story
     */
    public Story story { get; construct set; }

    public StoryInteractionTypeRepost (
        Story story
    ) {
        Object (
            story: story,
            tdlib_type: "storyInteractionTypeRepost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
