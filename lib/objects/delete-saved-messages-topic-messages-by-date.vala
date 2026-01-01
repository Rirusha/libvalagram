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
 * Deletes all messages between the specified dates in a Saved Messages
 * topic. Messages sent in the last 30 seconds will not be deleted
 */
public class TDLib.DeleteSavedMessagesTopicMessagesByDate : TDObject {

    /**
     * Identifier of Saved Messages topic which messages will be deleted
     */
    public int64 saved_messages_topic_id { get; construct set; }

    /**
     * The minimum date of the messages to delete
     */
    public int32 min_date { get; construct set; }

    /**
     * The maximum date of the messages to delete
     */
    public int32 max_date { get; construct set; }

    public DeleteSavedMessagesTopicMessagesByDate (
        int64 saved_messages_topic_id,
        int32 min_date,
        int32 max_date
    ) {
        Object (
            saved_messages_topic_id: saved_messages_topic_id,
            min_date: min_date,
            max_date: max_date,
            tdlib_type: "deleteSavedMessagesTopicMessagesByDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
