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
 * Creates a video chat (a group call bound to a chat). Available only
 * for basic groups, supergroups and channels; requires
 * can_manage_video_chats administrator right
 */
public class TDLib.CreateVideoChat : TDObject {

    /**
     * Identifier of a chat in which the video chat will be created
     */
    public int64 chat_id { get; construct set; }

    /**
     * Group call title; if empty, chat title will be used
     */
    public string title { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the group call is expected to be
     * started by an administrator; 0 to start the video chat immediately.
     * The date must be at least 10 seconds and at most 8 days in the future
     */
    public int32 start_date { get; construct set; }

    /**
     * Pass true to create an RTMP stream instead of an ordinary video chat
     */
    public bool is_rtmp_stream { get; construct set; }

    public CreateVideoChat (
        int64 chat_id,
        string title,
        int32 start_date,
        bool is_rtmp_stream
    ) {
        Object (
            chat_id: chat_id,
            title: title,
            start_date: start_date,
            is_rtmp_stream: is_rtmp_stream,
            tdlib_type: "createVideoChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
