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
 * Adds the paid message reaction to a message. Use
 * {@link Client.get_message_available_reactions} to check whether the
 * reaction is available for the message
 */
public class TDLib.AddPendingPaidMessageReaction : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Number of Telegram Stars to be used for the reaction. The total number
     * of pending paid reactions must not exceed
     * getOption("paid_reaction_star_count_max")
     */
    public int64 star_count { get; construct set; }

    /**
     * Type of the paid reaction; pass null if the user didn't choose
     * reaction type explicitly, for example, the reaction is set from the
     * message bubble
     */
    public PaidReactionType type_ { get; construct set; }

    public AddPendingPaidMessageReaction (
        int64 chat_id,
        int64 message_id,
        int64 star_count,
        PaidReactionType type_
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            star_count: star_count,
            type_: type_,
            tdlib_type: "addPendingPaidMessageReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
