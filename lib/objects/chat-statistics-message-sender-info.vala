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
 * Contains statistics about messages sent by a user
 */
public class TDLib.ChatStatisticsMessageSenderInfo : Error {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Number of sent messages
     */
    public int32 sent_message_count { get; construct set; }

    /**
     * Average number of characters in sent messages; 0 if unknown
     */
    public int32 average_character_count { get; construct set; }

    public ChatStatisticsMessageSenderInfo (
        int64 user_id,
        int32 sent_message_count,
        int32 average_character_count
    ) {
        Object (
            user_id: user_id,
            sent_message_count: sent_message_count,
            average_character_count: average_character_count,
            tdlib_type: "chatStatisticsMessageSenderInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
