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
 * Contains autosave settings for an autosave settings scope
 */
public class TDLib.ScopeAutosaveSettings : Error {

    /**
     * True, if photo autosave is enabled
     */
    public bool autosave_photos { get; construct set; }

    /**
     * True, if video autosave is enabled
     */
    public bool autosave_videos { get; construct set; }

    /**
     * The maximum size of a video file to be autosaved, in bytes; 512 KB -
     * 4000 MB
     */
    public int64 max_video_file_size { get; construct set; }

    public ScopeAutosaveSettings (
        bool autosave_photos,
        bool autosave_videos,
        int64 max_video_file_size
    ) {
        Object (
            autosave_photos: autosave_photos,
            autosave_videos: autosave_videos,
            max_video_file_size: max_video_file_size,
            tdlib_type: "scopeAutosaveSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
