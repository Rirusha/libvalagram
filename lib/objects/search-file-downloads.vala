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
 * Searches for files in the file download list or recently downloaded
 * files from the list
 */
public class TDLib.SearchFileDownloads : TDObject {

    /**
     * Query to search for; may be empty to return all downloaded files
     */
    public string query { get; construct set; }

    /**
     * Pass true to search only for active downloads, including paused
     */
    public bool only_active { get; construct set; }

    /**
     * Pass true to search only for completed downloads
     */
    public bool only_completed { get; construct set; }

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of files to be returned
     */
    public int32 limit { get; construct set; }

    public SearchFileDownloads (
        string query,
        bool only_active,
        bool only_completed,
        string offset,
        int32 limit
    ) {
        Object (
            query: query,
            only_active: only_active,
            only_completed: only_completed,
            offset: offset,
            limit: limit,
            tdlib_type: "searchFileDownloads",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
