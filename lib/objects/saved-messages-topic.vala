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
 * Contains information about a Saved Messages topic
 */
public class TDLib.SavedMessagesTopic : Error {

    /**
     * Unique topic identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Type of the topic
     */
    public SavedMessagesTopicType type_ { get; construct set; }

    /**
     * True, if the topic is pinned
     */
    public bool is_pinned { get; construct set; }

    /**
     * A parameter used to determine order of the topic in the topic list.
     * Topics must be sorted by the order in descending order
     */
    public int64 order { get; construct set; }

    /**
     * Last message in the topic; may be null if none or unknown
     */
    public Message? last_message { get; construct set; }

    /**
     * A draft of a message in the topic; may be null if none
     */
    public DraftMessage? draft_message { get; construct set; }

    public SavedMessagesTopic (
        int64 id_,
        SavedMessagesTopicType type_,
        bool is_pinned,
        int64 order,
        Message? last_message,
        DraftMessage? draft_message
    ) {
        Object (
            id_: id_,
            type_: type_,
            is_pinned: is_pinned,
            order: order,
            last_message: last_message,
            draft_message: draft_message,
            tdlib_type: "savedMessagesTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
