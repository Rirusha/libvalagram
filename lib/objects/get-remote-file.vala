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
 * Returns information about a file by its remote identifier; this is an
 * offline request. Can be used to register a URL as a file for further
 * uploading, or sending as a message. Even the request succeeds, the
 * file can be used only if it is still accessible to the user.
 * For example, if the file is from a message, then the message must be
 * not deleted and accessible to the user. If the file database is
 * disabled, then the corresponding object with the file must be
 * preloaded by the application
 */
internal class TDLib.GetRemoteFile : TDObject {

    /**
     * Remote identifier of the file to get
     */
    public string remote_file_id { get; construct set; }

    /**
     * File type; pass null if unknown
     */
    public FileType file_type { get; construct set; }

    public GetRemoteFile (
        string remote_file_id,
        FileType file_type
    ) {
        Object (
            remote_file_id: remote_file_id,
            file_type: file_type,
            tdlib_type: "getRemoteFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
