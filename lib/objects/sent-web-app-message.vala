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
 * Information about the message sent by
 * {@link Client.answer_web_app_query}
 */
public class TDLib.SentWebAppMessage : Error {

    /**
     * Identifier of the sent inline message, if known
     */
    public string inline_message_id { get; construct set; }

    public SentWebAppMessage (
        string inline_message_id
    ) {
        Object (
            inline_message_id: inline_message_id,
            tdlib_type: "sentWebAppMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
