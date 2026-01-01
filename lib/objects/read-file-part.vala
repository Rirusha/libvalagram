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
 * Reads a part of a file from the TDLib file cache and returns read
 * bytes. This method is intended to be used only if the application has
 * no direct access to TDLib's file system, because it is usually slower
 * than a direct read from the file
 */
public class TDLib.ReadFilePart : TDObject {

    /**
     * Identifier of the file. The file must be located in the TDLib file
     * cache
     */
    public int32 file_id { get; construct set; }

    /**
     * The offset from which to read the file
     */
    public int64 offset { get; construct set; }

    /**
     * Number of bytes to read. An error will be returned if there are not
     * enough bytes available in the file from the specified position. Pass 0
     * to read all available data from the specified position
     */
    public int64 count { get; construct set; }

    public ReadFilePart (
        int32 file_id,
        int64 offset,
        int64 count
    ) {
        Object (
            file_id: file_id,
            offset: offset,
            count: count,
            tdlib_type: "readFilePart",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
