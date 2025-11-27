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
 * Creates an album of stories; requires can_edit_stories administrator
 * right for supergroup and channel chats
 */
public class TDLib.CreateStoryAlbum : TDObject {

    /**
     * Identifier of the chat that posted the stories
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * Name of the album; 1-12 characters
     */
    public string name { get; construct set; }

    /**
     * Identifiers of stories to add to the album;
     * 0-getOption("story_album_size_max") identifiers
     */
    public Gee.ArrayList<int32?> story_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public CreateStoryAlbum (
        int64 story_poster_chat_id,
        string name,
        Gee.ArrayList<int32?> story_ids
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            name: name,
            story_ids: story_ids,
            tdlib_type: "createStoryAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
