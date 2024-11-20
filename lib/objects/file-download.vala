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
 * Describes a file added to file download list
 */
public class TDLib.FileDownload : Error {

    /**
     * File identifier
     */
    public int32 file_id { get; construct set; }

    /**
     * The message with the file
     */
    public Message message { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the file was added to the download
     * list
     */
    public int32 add_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the file downloading was
     * completed; 0 if the file downloading isn't completed
     */
    public int32 complete_date { get; construct set; }

    /**
     * True, if downloading of the file is paused
     */
    public bool is_paused { get; construct set; }

    public FileDownload (
        int32 file_id,
        Message message,
        int32 add_date,
        int32 complete_date,
        bool is_paused
    ) {
        Object (
            file_id: file_id,
            message: message,
            add_date: add_date,
            complete_date: complete_date,
            is_paused: is_paused,
            tdlib_type: "fileDownload",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
