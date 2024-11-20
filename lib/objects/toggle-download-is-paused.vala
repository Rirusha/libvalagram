/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Changes pause state of a file in the file download list
 */
internal class TDLib.ToggleDownloadIsPaused : TDObject {

    /**
     * Identifier of the downloaded file
     */
    public int32 file_id { get; construct set; }

    /**
     * Pass true if the download is paused
     */
    public bool is_paused { get; construct set; }

    public ToggleDownloadIsPaused (
        int32 file_id,
        bool is_paused
    ) {
        Object (
            file_id: file_id,
            is_paused: is_paused,
            tdlib_type: "toggleDownloadIsPaused",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
