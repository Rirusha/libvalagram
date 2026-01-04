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
 * Summarizes content of the message with non-empty summary_language_code
 */
public class TDLib.SummarizeMessage : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass a language code to which the summary will be translated; may be
     * empty if translation isn't needed. See translateText.to_language_code
     * for the list of supported values
     */
    public string translate_to_language_code { get; construct set; }

    public SummarizeMessage (
        int64 chat_id,
        int64 message_id,
        string translate_to_language_code
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            translate_to_language_code: translate_to_language_code,
            tdlib_type: "summarizeMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
