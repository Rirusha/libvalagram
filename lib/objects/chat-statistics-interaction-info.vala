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
 * Contains statistics about interactions with a message sent in the chat
 * or a story posted on behalf of the chat
 */
public class TDLib.ChatStatisticsInteractionInfo : Error {

    /**
     * Type of the object
     */
    public ChatStatisticsObjectType object_type_ { get; construct set; }

    /**
     * Number of times the object was viewed
     */
    public int32 view_count { get; construct set; }

    /**
     * Number of times the object was forwarded
     */
    public int32 forward_count { get; construct set; }

    /**
     * Number of times reactions were added to the object
     */
    public int32 reaction_count { get; construct set; }

    public ChatStatisticsInteractionInfo (
        ChatStatisticsObjectType object_type_,
        int32 view_count,
        int32 forward_count,
        int32 reaction_count
    ) {
        Object (
            object_type_: object_type_,
            view_count: view_count,
            forward_count: forward_count,
            reaction_count: reaction_count,
            tdlib_type: "chatStatisticsInteractionInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
