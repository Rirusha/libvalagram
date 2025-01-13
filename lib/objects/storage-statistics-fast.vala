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
 * Contains approximate storage usage statistics, excluding files of
 * unknown file type
 */
public class TDLib.StorageStatisticsFast : Error {

    /**
     * Approximate total size of files, in bytes
     */
    public int64 files_size { get; construct set; }

    /**
     * Approximate number of files
     */
    public int32 file_count { get; construct set; }

    /**
     * Size of the database
     */
    public int64 database_size { get; construct set; }

    /**
     * Size of the language pack database
     */
    public int64 language_pack_database_size { get; construct set; }

    /**
     * Size of the TDLib internal log
     */
    public int64 log_size { get; construct set; }

    public StorageStatisticsFast (
        int64 files_size,
        int32 file_count,
        int64 database_size,
        int64 language_pack_database_size,
        int64 log_size
    ) {
        Object (
            files_size: files_size,
            file_count: file_count,
            database_size: database_size,
            language_pack_database_size: language_pack_database_size,
            log_size: log_size,
            tdlib_type: "storageStatisticsFast",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
