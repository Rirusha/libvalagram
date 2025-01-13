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
 * Contains the storage usage statistics for a specific chat
 */
public class TDLib.StorageStatisticsByChat : Error {

    /**
     * Chat identifier; 0 if none
     */
    public int64 chat_id { get; construct set; }

    /**
     * Total size of the files in the chat, in bytes
     */
    public int64 size { get; construct set; }

    /**
     * Total number of files in the chat
     */
    public int32 count { get; construct set; }

    /**
     * Statistics split by file types
     */
    public Gee.ArrayList<StorageStatisticsByFileType?> by_file_type { get; construct set; default = new Gee.ArrayList<StorageStatisticsByFileType?> (); }

    public StorageStatisticsByChat (
        int64 chat_id,
        int64 size,
        int32 count,
        Gee.ArrayList<StorageStatisticsByFileType?> by_file_type
    ) {
        Object (
            chat_id: chat_id,
            size: size,
            count: count,
            by_file_type: by_file_type,
            tdlib_type: "storageStatisticsByChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
