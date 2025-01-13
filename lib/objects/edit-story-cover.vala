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
 * Changes cover of a video story. Can be called only if
 * story.can_be_edited == true and the story isn't being edited now
 */
public class TDLib.EditStoryCover : TDObject {

    /**
     * Identifier of the chat that posted the story
     */
    public int64 story_sender_chat_id { get; construct set; }

    /**
     * Identifier of the story to edit
     */
    public int32 story_id { get; construct set; }

    /**
     * New timestamp of the frame, which will be used as video thumbnail
     */
    public double cover_frame_timestamp { get; construct set; }

    public EditStoryCover (
        int64 story_sender_chat_id,
        int32 story_id,
        double cover_frame_timestamp
    ) {
        Object (
            story_sender_chat_id: story_sender_chat_id,
            story_id: story_id,
            cover_frame_timestamp: cover_frame_timestamp,
            tdlib_type: "editStoryCover",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
