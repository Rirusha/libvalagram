/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Returns the list of stories added to the given story album. For
 * optimal performance, the number of returned stories is chosen by TDLib
 */
public class TDLib.GetStoryAlbumStories : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Story album identifier
     */
    public int32 story_album_id { get; construct set; }

    /**
     * Offset of the first entry to return; use 0 to get results from the
     * first album story
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of stories to be returned. For optimal performance,
     * the number of returned stories is chosen by TDLib and can be smaller
     * than the specified limit
     */
    public int32 limit { get; construct set; }

    public GetStoryAlbumStories (
        int64 chat_id,
        int32 story_album_id,
        int32 offset,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            story_album_id: story_album_id,
            offset: offset,
            limit: limit,
            tdlib_type: "getStoryAlbumStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
