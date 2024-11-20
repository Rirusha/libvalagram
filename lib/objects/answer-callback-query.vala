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
 * Sets the result of a callback query; for bots only
 */
internal class TDLib.AnswerCallbackQuery : TDObject {

    /**
     * Identifier of the callback query
     */
    public int64 callback_query_id { get; construct set; }

    /**
     * Text of the answer
     */
    public string text { get; construct set; }

    /**
     * Pass true to show an alert to the user instead of a toast notification
     */
    public bool show_alert { get; construct set; }

    /**
     * URL to be opened
     */
    public string url { get; construct set; }

    /**
     * Time during which the result of the query can be cached, in seconds
     */
    public int32 cache_time { get; construct set; }

    public AnswerCallbackQuery (
        int64 callback_query_id,
        string text,
        bool show_alert,
        string url,
        int32 cache_time
    ) {
        Object (
            callback_query_id: callback_query_id,
            text: text,
            show_alert: show_alert,
            url: url,
            cache_time: cache_time,
            tdlib_type: "answerCallbackQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
