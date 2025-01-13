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
 * Removes all files from the file download list
 */
public class TDLib.RemoveAllFilesFromDownloads : TDObject {

    /**
     * Pass true to remove only active downloads, including paused
     */
    public bool only_active { get; construct set; }

    /**
     * Pass true to remove only completed downloads
     */
    public bool only_completed { get; construct set; }

    /**
     * Pass true to delete the file from the TDLib file cache
     */
    public bool delete_from_cache { get; construct set; }

    public RemoveAllFilesFromDownloads (
        bool only_active,
        bool only_completed,
        bool delete_from_cache
    ) {
        Object (
            only_active: only_active,
            only_completed: only_completed,
            delete_from_cache: delete_from_cache,
            tdlib_type: "removeAllFilesFromDownloads",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
