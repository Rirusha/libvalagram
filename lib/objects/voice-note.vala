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
 * Describes a voice note
 */
public class TDLib.VoiceNote : Error {

    /**
     * Duration of the voice note, in seconds; as defined by the sender
     */
    public int32 duration { get; construct set; }

    /**
     * A waveform representation of the voice note in 5-bit format
     */
    public Bytes waveform { get; construct set; }

    /**
     * MIME type of the file; as defined by the sender. Usually, one of
     * "audio/ogg" for Opus in an OGG container, "audio/mpeg" for an MP3
     * audio, or "audio/mp4" for an M4A audio
     */
    public string mime_type { get; construct set; }

    /**
     * Result of speech recognition in the voice note; may be null
     */
    public SpeechRecognitionResult? speech_recognition_result { get; construct set; }

    /**
     * File containing the voice note
     */
    public File voice { get; construct set; }

    public VoiceNote (
        int32 duration,
        Bytes waveform,
        string mime_type,
        SpeechRecognitionResult? speech_recognition_result,
        File voice
    ) {
        Object (
            duration: duration,
            waveform: waveform,
            mime_type: mime_type,
            speech_recognition_result: speech_recognition_result,
            voice: voice,
            tdlib_type: "voiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
