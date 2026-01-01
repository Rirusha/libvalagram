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
 * Describes type of object, for which statistics are provided
 */
public abstract class TDLib.ChatStatisticsObjectType : Error {}

/**
 * Describes a message sent in the chat
 */
public class TDLib.ChatStatisticsObjectTypeMessage : ChatStatisticsObjectType {

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    public ChatStatisticsObjectTypeMessage (
        int64 message_id
    ) {
        Object (
            message_id: message_id,
            tdlib_type: "chatStatisticsObjectTypeMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a story posted on behalf of the chat
 */
public class TDLib.ChatStatisticsObjectTypeStory : ChatStatisticsObjectType {

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    public ChatStatisticsObjectTypeStory (
        int32 story_id
    ) {
        Object (
            story_id: story_id,
            tdlib_type: "chatStatisticsObjectTypeStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
