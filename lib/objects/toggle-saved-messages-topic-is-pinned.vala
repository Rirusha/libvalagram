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
 * Changes the pinned state of a Saved Messages topic. There can be up to
 * getOption("pinned_saved_messages_topic_count_max") pinned topics. The
 * limit can be increased with Telegram Premium
 */
internal class TDLib.ToggleSavedMessagesTopicIsPinned : TDObject {

    /**
     * Identifier of Saved Messages topic to pin or unpin
     */
    public int64 saved_messages_topic_id { get; construct set; }

    /**
     * Pass true to pin the topic; pass false to unpin it
     */
    public bool is_pinned { get; construct set; }

    public ToggleSavedMessagesTopicIsPinned (
        int64 saved_messages_topic_id,
        bool is_pinned
    ) {
        Object (
            saved_messages_topic_id: saved_messages_topic_id,
            is_pinned: is_pinned,
            tdlib_type: "toggleSavedMessagesTopicIsPinned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
