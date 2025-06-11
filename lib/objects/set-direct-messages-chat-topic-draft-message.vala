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
 * Changes the draft message in the topic in a channel direct messages
 * chat administered by the current user
 */
public class TDLib.SetDirectMessagesChatTopicDraftMessage : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Topic identifier
     */
    public int64 topic_id { get; construct set; }

    /**
     * New draft message; pass null to remove the draft. All files in draft
     * message content must be of the type inputFileLocal. Media thumbnails
     * and captions are ignored
     */
    public DraftMessage draft_message { get; construct set; }

    public SetDirectMessagesChatTopicDraftMessage (
        int64 chat_id,
        int64 topic_id,
        DraftMessage draft_message
    ) {
        Object (
            chat_id: chat_id,
            topic_id: topic_id,
            draft_message: draft_message,
            tdlib_type: "setDirectMessagesChatTopicDraftMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
