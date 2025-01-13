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
 * Stops the downloading of a file. If a file has already been
 * downloaded, does nothing
 */
public class TDLib.CancelDownloadFile : TDObject {

    /**
     * Identifier of a file to stop downloading
     */
    public int32 file_id { get; construct set; }

    /**
     * Pass true to stop downloading only if it hasn't been started, i.e.
     * request hasn't been sent to server
     */
    public bool only_if_pending { get; construct set; }

    public CancelDownloadFile (
        int32 file_id,
        bool only_if_pending
    ) {
        Object (
            file_id: file_id,
            only_if_pending: only_if_pending,
            tdlib_type: "cancelDownloadFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
