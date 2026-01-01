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
 * Rates recognized speech in a video note or a voice note message
 */
public class TDLib.RateSpeechRecognition : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true if the speech recognition is good
     */
    public bool is_good { get; construct set; }

    public RateSpeechRecognition (
        int64 chat_id,
        int64 message_id,
        bool is_good
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            is_good: is_good,
            tdlib_type: "rateSpeechRecognition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
