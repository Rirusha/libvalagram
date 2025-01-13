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
 * Represents a reaction applied to a message
 */
public class TDLib.AddedReaction : Error {

    /**
     * Type of the reaction
     */
    public ReactionType type_ { get; construct set; }

    /**
     * Identifier of the chat member, applied the reaction
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * True, if the reaction was added by the current user
     */
    public bool is_outgoing { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the reaction was added
     */
    public int32 date { get; construct set; }

    public AddedReaction (
        ReactionType type_,
        MessageSender sender_id,
        bool is_outgoing,
        int32 date
    ) {
        Object (
            type_: type_,
            sender_id: sender_id,
            is_outgoing: is_outgoing,
            date: date,
            tdlib_type: "addedReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
