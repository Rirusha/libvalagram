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
 * Describes result of speech recognition in a voice note
 */
public abstract class TDLib.SpeechRecognitionResult : Error {}

/**
 * The speech recognition is ongoing
 */
public class TDLib.SpeechRecognitionResultPending : SpeechRecognitionResult {

    /**
     * Partially recognized text
     */
    public string partial_text { get; construct set; }

    public SpeechRecognitionResultPending (
        string partial_text
    ) {
        Object (
            partial_text: partial_text,
            tdlib_type: "speechRecognitionResultPending",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The speech recognition successfully finished
 */
public class TDLib.SpeechRecognitionResultText : SpeechRecognitionResult {

    /**
     * Recognized text
     */
    public string text { get; construct set; }

    public SpeechRecognitionResultText (
        string text
    ) {
        Object (
            text: text,
            tdlib_type: "speechRecognitionResultText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The speech recognition failed
 */
public class TDLib.SpeechRecognitionResultError : SpeechRecognitionResult {

    /**
     * Recognition error. An error with a message "MSG_VOICE_TOO_LONG" is
     * returned when media duration is too big to be recognized
     */
    public Error error { get; construct set; }

    public SpeechRecognitionResultError (
        Error error
    ) {
        Object (
            error: error,
            tdlib_type: "speechRecognitionResultError",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
