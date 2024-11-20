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
 * Describes a video note. The video must be equal in width and height,
 * cropped to a circle, and stored in MPEG4 format
 */
public class TDLib.VideoNote : Error {

    /**
     * Duration of the video, in seconds; as defined by the sender
     */
    public int32 duration { get; construct set; }

    /**
     * A waveform representation of the video note's audio in 5-bit format;
     * may be empty if unknown
     */
    public Bytes waveform { get; construct set; }

    /**
     * Video width and height; as defined by the sender
     */
    public int32 length { get; construct set; }

    /**
     * Video minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * Video thumbnail in JPEG format; as defined by the sender; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    /**
     * Result of speech recognition in the video note; may be null
     */
    public SpeechRecognitionResult? speech_recognition_result { get; construct set; }

    /**
     * File containing the video
     */
    public File video { get; construct set; }

    public VideoNote (
        int32 duration,
        Bytes waveform,
        int32 length,
        Minithumbnail? minithumbnail,
        Thumbnail? thumbnail,
        SpeechRecognitionResult? speech_recognition_result,
        File video
    ) {
        Object (
            duration: duration,
            waveform: waveform,
            length: length,
            minithumbnail: minithumbnail,
            thumbnail: thumbnail,
            speech_recognition_result: speech_recognition_result,
            video: video,
            tdlib_type: "videoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
