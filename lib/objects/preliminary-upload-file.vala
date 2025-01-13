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
 * Preliminary uploads a file to the cloud before sending it in a
 * message, which can be useful for uploading of being recorded voice and
 * video notes.
 * In all other cases there is no need to preliminary upload a file.
 * Updates updateFile will be used to notify about upload progress.
 * The upload will not be completed until the file is sent in a message
 */
internal class TDLib.PreliminaryUploadFile : TDObject {

    /**
     * File to upload
     */
    public InputFile file { get; construct set; }

    /**
     * File type; pass null if unknown
     */
    public FileType file_type { get; construct set; }

    /**
     * Priority of the upload (1-32). The higher the priority, the earlier
     * the file will be uploaded. If the priorities of two files are equal,
     * then the first one for which preliminaryUploadFile was called will be
     * uploaded first
     */
    public int32 priority { get; construct set; }

    public PreliminaryUploadFile (
        InputFile file,
        FileType file_type,
        int32 priority
    ) {
        Object (
            file: file,
            file_type: file_type,
            priority: priority,
            tdlib_type: "preliminaryUploadFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
