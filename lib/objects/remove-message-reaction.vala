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
 * Removes a reaction from a message. A chosen reaction can always be
 * removed
 */
internal class TDLib.RemoveMessageReaction : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Type of the reaction to remove. The paid reaction can't be removed
     */
    public ReactionType reaction_type { get; construct set; }

    public RemoveMessageReaction (
        int64 chat_id,
        int64 message_id,
        ReactionType reaction_type
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            reaction_type: reaction_type,
            tdlib_type: "removeMessageReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
