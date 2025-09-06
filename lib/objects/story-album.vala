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
 * Describes album of stories
 */
public class TDLib.StoryAlbum : Error {

    /**
     * Unique identifier of the album
     */
    public int32 id_ { get; construct set; }

    /**
     * Name of the album
     */
    public string name { get; construct set; }

    /**
     * Icon of the album; may be null if none
     */
    public Photo? photo_icon { get; construct set; }

    /**
     * Video icon of the album; may be null if none
     */
    public Video? video_icon { get; construct set; }

    public StoryAlbum (
        int32 id_,
        string name,
        Photo? photo_icon,
        Video? video_icon
    ) {
        Object (
            id_: id_,
            name: name,
            photo_icon: photo_icon,
            video_icon: video_icon,
            tdlib_type: "storyAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
