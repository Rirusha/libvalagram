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
 * Changes order of story albums. If the albums are owned by a supergroup
 * or a channel chat, then requires can_edit_stories administrator right
 * in the chat
 */
public class TDLib.ReorderStoryAlbums : TDObject {

    /**
     * Identifier of the chat that owns the stories
     */
    public int64 chat_id { get; construct set; }

    /**
     * New order of story albums
     */
    public Gee.ArrayList<int32?> story_album_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public ReorderStoryAlbums (
        int64 chat_id,
        Gee.ArrayList<int32?> story_album_ids
    ) {
        Object (
            chat_id: chat_id,
            story_album_ids: story_album_ids,
            tdlib_type: "reorderStoryAlbums",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
