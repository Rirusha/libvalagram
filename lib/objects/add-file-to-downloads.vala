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
 * Adds a file from a message to the list of file downloads. Download
 * progress and completion of the download will be notified through
 * updateFile updates.
 * If message database is used, the list of file downloads is persistent
 * across application restarts. The downloading is independent of
 * download using downloadFile, i.e. it continues if downloadFile is
 * canceled or is used to download a part of the file
 */
internal class TDLib.AddFileToDownloads : TDObject {

    /**
     * Identifier of the file to download
     */
    public int32 file_id { get; construct set; }

    /**
     * Chat identifier of the message with the file
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Priority of the download (1-32). The higher the priority, the earlier
     * the file will be downloaded. If the priorities of two files are equal,
     * then the last one for which downloadFile/addFileToDownloads was called
     * will be downloaded first
     */
    public int32 priority { get; construct set; }

    public AddFileToDownloads (
        int32 file_id,
        int64 chat_id,
        int64 message_id,
        int32 priority
    ) {
        Object (
            file_id: file_id,
            chat_id: chat_id,
            message_id: message_id,
            priority: priority,
            tdlib_type: "addFileToDownloads",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
