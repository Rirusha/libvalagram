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
 * Describes an audio file. Audio is usually in MP3 or M4A format
 */
public class TDLib.Audio : Error {

    /**
     * Duration of the audio, in seconds; as defined by the sender
     */
    public int32 duration { get; construct set; }

    /**
     * Title of the audio; as defined by the sender
     */
    public string title { get; construct set; }

    /**
     * Performer of the audio; as defined by the sender
     */
    public string performer { get; construct set; }

    /**
     * Original name of the file; as defined by the sender
     */
    public string file_name { get; construct set; }

    /**
     * The MIME type of the file; as defined by the sender
     */
    public string mime_type { get; construct set; }

    /**
     * The minithumbnail of the album cover; may be null
     */
    public Minithumbnail? album_cover_minithumbnail { get; construct set; }

    /**
     * The thumbnail of the album cover in JPEG format; as defined by the
     * sender. The full size thumbnail is expected to be extracted from the
     * downloaded audio file; may be null
     */
    public Thumbnail? album_cover_thumbnail { get; construct set; }

    /**
     * Album cover variants to use if the downloaded audio file contains no
     * album cover. Provided thumbnail dimensions are approximate
     */
    public Gee.ArrayList<Thumbnail?> external_album_covers { get; construct set; default = new Gee.ArrayList<Thumbnail?> (); }

    /**
     * File containing the audio
     */
    public File audio { get; construct set; }

    public Audio (
        int32 duration,
        string title,
        string performer,
        string file_name,
        string mime_type,
        Minithumbnail? album_cover_minithumbnail,
        Thumbnail? album_cover_thumbnail,
        Gee.ArrayList<Thumbnail?> external_album_covers,
        File audio
    ) {
        Object (
            duration: duration,
            title: title,
            performer: performer,
            file_name: file_name,
            mime_type: mime_type,
            album_cover_minithumbnail: album_cover_minithumbnail,
            album_cover_thumbnail: album_cover_thumbnail,
            external_album_covers: external_album_covers,
            audio: audio,
            tdlib_type: "audio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
