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
 * Represents a file
 */
public class TDLib.File : Error {

    /**
     * Unique file identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * File size, in bytes; 0 if unknown
     */
    public int64 size { get; construct set; }

    /**
     * Approximate file size in bytes in case the exact file size is unknown.
     * Can be used to show download/upload progress
     */
    public int64 expected_size { get; construct set; }

    /**
     * Information about the local copy of the file
     */
    public LocalFile local { get; construct set; }

    /**
     * Information about the remote copy of the file
     */
    public RemoteFile remote { get; construct set; }

    public File (
        int32 id_,
        int64 size,
        int64 expected_size,
        LocalFile local,
        RemoteFile remote
    ) {
        Object (
            id_: id_,
            size: size,
            expected_size: expected_size,
            local: local,
            remote: remote,
            tdlib_type: "file",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
