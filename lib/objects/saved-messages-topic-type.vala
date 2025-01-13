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
 * Describes type of Saved Messages topic
 */
public abstract class TDLib.SavedMessagesTopicType : Error {}

/**
 * Topic containing messages sent by the current user of forwarded from
 * an unknown chat
 */
public class TDLib.SavedMessagesTopicTypeMyNotes : SavedMessagesTopicType {

    public SavedMessagesTopicTypeMyNotes () {
        Object (
            tdlib_type: "savedMessagesTopicTypeMyNotes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Topic containing messages forwarded from a user with hidden privacy
 */
public class TDLib.SavedMessagesTopicTypeAuthorHidden : SavedMessagesTopicType {

    public SavedMessagesTopicTypeAuthorHidden () {
        Object (
            tdlib_type: "savedMessagesTopicTypeAuthorHidden",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Topic containing messages forwarded from a specific chat
 */
public class TDLib.SavedMessagesTopicTypeSavedFromChat : SavedMessagesTopicType {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    public SavedMessagesTopicTypeSavedFromChat (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "savedMessagesTopicTypeSavedFromChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
