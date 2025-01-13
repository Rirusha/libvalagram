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
 * Contains a bot's answer to a callback query
 */
public class TDLib.CallbackQueryAnswer : Error {

    /**
     * Text of the answer
     */
    public string text { get; construct set; }

    /**
     * True, if an alert must be shown to the user instead of a toast
     * notification
     */
    public bool show_alert { get; construct set; }

    /**
     * URL to be opened
     */
    public string url { get; construct set; }

    public CallbackQueryAnswer (
        string text,
        bool show_alert,
        string url
    ) {
        Object (
            text: text,
            show_alert: show_alert,
            url: url,
            tdlib_type: "callbackQueryAnswer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
