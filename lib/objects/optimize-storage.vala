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
 * Optimizes storage usage, i.e. deletes some files and returns new
 * storage usage statistics. Secret thumbnails can't be deleted
 */
public class TDLib.OptimizeStorage : TDObject {

    /**
     * Limit on the total size of files after deletion, in bytes. Pass -1 to
     * use the default limit
     */
    public int64 size { get; construct set; }

    /**
     * Limit on the time that has passed since the last time a file was
     * accessed (or creation time for some filesystems). Pass -1 to use the
     * default limit
     */
    public int32 ttl { get; construct set; }

    /**
     * Limit on the total number of files after deletion. Pass -1 to use the
     * default limit
     */
    public int32 count { get; construct set; }

    /**
     * The amount of time after the creation of a file during which it can't
     * be deleted, in seconds. Pass -1 to use the default value
     */
    public int32 immunity_delay { get; construct set; }

    /**
     * If non-empty, only files with the given types are considered. By
     * default, all types except thumbnails, profile photos, stickers and
     * wallpapers are deleted
     */
    public Gee.ArrayList<FileType?> file_types { get; construct set; default = new Gee.ArrayList<FileType?> (); }

    /**
     * If non-empty, only files from the given chats are considered. Use 0 as
     * chat identifier to delete files not belonging to any chat (e.g.,
     * profile photos)
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * If non-empty, files from the given chats are excluded. Use 0 as chat
     * identifier to exclude all files not belonging to any chat (e.g.,
     * profile photos)
     */
    public Gee.ArrayList<int64?> exclude_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Pass true if statistics about the files that were deleted must be
     * returned instead of the whole storage usage statistics. Affects only
     * returned statistics
     */
    public bool return_deleted_file_statistics { get; construct set; }

    /**
     * Same as in {@link Client.get_storage_statistics} Affects only returned
     * statistics
     */
    public int32 chat_limit { get; construct set; }

    public OptimizeStorage (
        int64 size,
        int32 ttl,
        int32 count,
        int32 immunity_delay,
        Gee.ArrayList<FileType?> file_types,
        Gee.ArrayList<int64?> chat_ids,
        Gee.ArrayList<int64?> exclude_chat_ids,
        bool return_deleted_file_statistics,
        int32 chat_limit
    ) {
        Object (
            size: size,
            ttl: ttl,
            count: count,
            immunity_delay: immunity_delay,
            file_types: file_types,
            chat_ids: chat_ids,
            exclude_chat_ids: exclude_chat_ids,
            return_deleted_file_statistics: return_deleted_file_statistics,
            chat_limit: chat_limit,
            tdlib_type: "optimizeStorage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
