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
 * Downloads a file from the cloud. Download progress and completion of
 * the download will be notified through updateFile updates
 */
internal class TDLib.DownloadFile : TDObject {

    /**
     * Identifier of the file to download
     */
    public int32 file_id { get; construct set; }

    /**
     * Priority of the download (1-32). The higher the priority, the earlier
     * the file will be downloaded. If the priorities of two files are equal,
     * then the last one for which downloadFile/addFileToDownloads was called
     * will be downloaded first
     */
    public int32 priority { get; construct set; }

    /**
     * The starting position from which the file needs to be downloaded
     */
    public int64 offset { get; construct set; }

    /**
     * Number of bytes which need to be downloaded starting from the "offset"
     * position before the download will automatically be canceled; use 0 to
     * download without a limit
     */
    public int64 limit { get; construct set; }

    /**
     * Pass true to return response only after the file download has
     * succeeded, has failed, has been canceled, or a new downloadFile
     * request with different offset/limit parameters was sent; pass false to
     * return file state immediately, just after the download has been
     * started
     */
    public bool synchronous { get; construct set; }

    public DownloadFile (
        int32 file_id,
        int32 priority,
        int64 offset,
        int64 limit,
        bool synchronous
    ) {
        Object (
            file_id: file_id,
            priority: priority,
            offset: offset,
            limit: limit,
            synchronous: synchronous,
            tdlib_type: "downloadFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
