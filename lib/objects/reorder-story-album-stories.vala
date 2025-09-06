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
 * Changes order of stories in an album. If the album is owned by a
 * supergroup or a channel chat, then
 * requires can_edit_stories administrator right in the chat. Returns the
 * changed album
 */
public class TDLib.ReorderStoryAlbumStories : TDObject {

    /**
     * Identifier of the chat that owns the stories
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the story album
     */
    public int32 story_album_id { get; construct set; }

    /**
     * Identifier of the stories to move to the beginning of the album. All
     * other stories are placed in the current order after the specified
     * stories
     */
    public Gee.ArrayList<int32?> story_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public ReorderStoryAlbumStories (
        int64 chat_id,
        int32 story_album_id,
        Gee.ArrayList<int32?> story_ids
    ) {
        Object (
            chat_id: chat_id,
            story_album_id: story_album_id,
            story_ids: story_ids,
            tdlib_type: "reorderStoryAlbumStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
