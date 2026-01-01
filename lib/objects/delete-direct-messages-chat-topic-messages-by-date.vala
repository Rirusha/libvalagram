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
 * Deletes all messages between the specified dates in the topic in a
 * channel direct messages chat administered by the current user.
 * Messages sent in the last 30 seconds will not be deleted
 */
public class TDLib.DeleteDirectMessagesChatTopicMessagesByDate : TDObject {

    /**
     * Chat identifier of the channel direct messages chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the topic which messages will be deleted
     */
    public int64 topic_id { get; construct set; }

    /**
     * The minimum date of the messages to delete
     */
    public int32 min_date { get; construct set; }

    /**
     * The maximum date of the messages to delete
     */
    public int32 max_date { get; construct set; }

    public DeleteDirectMessagesChatTopicMessagesByDate (
        int64 chat_id,
        int64 topic_id,
        int32 min_date,
        int32 max_date
    ) {
        Object (
            chat_id: chat_id,
            topic_id: topic_id,
            min_date: min_date,
            max_date: max_date,
            tdlib_type: "deleteDirectMessagesChatTopicMessagesByDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
