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
 * Contains information about an unread reaction to a message
 */
public class TDLib.UnreadReaction : Error {

    /**
     * Type of the reaction
     */
    public ReactionType type_ { get; construct set; }

    /**
     * Identifier of the sender, added the reaction
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * True, if the reaction was added with a big animation
     */
    public bool is_big { get; construct set; }

    public UnreadReaction (
        ReactionType type_,
        MessageSender sender_id,
        bool is_big
    ) {
        Object (
            type_: type_,
            sender_id: sender_id,
            is_big: is_big,
            tdlib_type: "unreadReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
