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
 * Describes a document of any type
 */
public class TDLib.Document : Error {

    /**
     * Original name of the file; as defined by the sender
     */
    public string file_name { get; construct set; }

    /**
     * MIME type of the file; as defined by the sender
     */
    public string mime_type { get; construct set; }

    /**
     * Document minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * Document thumbnail in JPEG or PNG format (PNG will be used only for
     * background patterns); as defined by the sender; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    /**
     * File containing the document
     */
    public File document { get; construct set; }

    public Document (
        string file_name,
        string mime_type,
        Minithumbnail? minithumbnail,
        Thumbnail? thumbnail,
        File document
    ) {
        Object (
            file_name: file_name,
            mime_type: mime_type,
            minithumbnail: minithumbnail,
            thumbnail: thumbnail,
            document: document,
            tdlib_type: "document",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
