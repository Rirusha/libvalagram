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
 * Reports a story to the Telegram moderators
 */
public class TDLib.ReportStory : TDObject {

    /**
     * The identifier of the sender of the story to report
     */
    public int64 story_sender_chat_id { get; construct set; }

    /**
     * The identifier of the story to report
     */
    public int32 story_id { get; construct set; }

    /**
     * Option identifier chosen by the user; leave empty for the initial
     * request
     */
    public Bytes option_id { get; construct set; }

    /**
     * Additional report details; 0-1024 characters; leave empty for the
     * initial request
     */
    public string text { get; construct set; }

    public ReportStory (
        int64 story_sender_chat_id,
        int32 story_id,
        Bytes option_id,
        string text
    ) {
        Object (
            story_sender_chat_id: story_sender_chat_id,
            story_id: story_id,
            option_id: option_id,
            text: text,
            tdlib_type: "reportStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
