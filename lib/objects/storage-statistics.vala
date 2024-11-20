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
 * Contains the exact storage usage statistics split by chats and file
 * type
 */
public class TDLib.StorageStatistics : Error {

    /**
     * Total size of files, in bytes
     */
    public int64 size { get; construct set; }

    /**
     * Total number of files
     */
    public int32 count { get; construct set; }

    /**
     * Statistics split by chats
     */
    public Gee.ArrayList<StorageStatisticsByChat?> by_chat { get; construct set; default = new Gee.ArrayList<StorageStatisticsByChat?> (); }

    public StorageStatistics (
        int64 size,
        int32 count,
        Gee.ArrayList<StorageStatisticsByChat?> by_chat
    ) {
        Object (
            size: size,
            count: count,
            by_chat: by_chat,
            tdlib_type: "storageStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
