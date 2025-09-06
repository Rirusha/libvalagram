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
 * Deletes a story album. If the album is owned by a supergroup or a
 * channel chat, then requires can_edit_stories administrator right in
 * the chat
 */
public class TDLib.DeleteStoryAlbum : TDObject {

    /**
     * Identifier of the chat that owns the stories
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the story album
     */
    public int32 story_album_id { get; construct set; }

    public DeleteStoryAlbum (
        int64 chat_id,
        int32 story_album_id
    ) {
        Object (
            chat_id: chat_id,
            story_album_id: story_album_id,
            tdlib_type: "deleteStoryAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
