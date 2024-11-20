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
 * Describes type of message reaction
 */
public abstract class TDLib.ReactionType : Error {}

/**
 * A reaction with an emoji
 */
public class TDLib.ReactionTypeEmoji : ReactionType {

    /**
     * Text representation of the reaction
     */
    public string emoji { get; construct set; }

    public ReactionTypeEmoji (
        string emoji
    ) {
        Object (
            emoji: emoji,
            tdlib_type: "reactionTypeEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A reaction with a custom emoji
 */
public class TDLib.ReactionTypeCustomEmoji : ReactionType {

    /**
     * Unique identifier of the custom emoji
     */
    public int64 custom_emoji_id { get; construct set; }

    public ReactionTypeCustomEmoji (
        int64 custom_emoji_id
    ) {
        Object (
            custom_emoji_id: custom_emoji_id,
            tdlib_type: "reactionTypeCustomEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The paid reaction in a channel chat
 */
public class TDLib.ReactionTypePaid : ReactionType {

    public ReactionTypePaid () {
        Object (
            tdlib_type: "reactionTypePaid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
