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
 * Sets the result of an inline query; for bots only
 */
public class TDLib.AnswerInlineQuery : TDObject {

    /**
     * Identifier of the inline query
     */
    public int64 inline_query_id { get; construct set; }

    /**
     * Pass true if results may be cached and returned only for the user that
     * sent the query. By default, results may be returned to any user who
     * sends the same query
     */
    public bool is_personal { get; construct set; }

    /**
     * Button to be shown above inline query results; pass null if none
     */
    public InlineQueryResultsButton button { get; construct set; }

    /**
     * The results of the query
     */
    public Gee.ArrayList<InputInlineQueryResult?> results { get; construct set; default = new Gee.ArrayList<InputInlineQueryResult?> (); }

    /**
     * Allowed time to cache the results of the query, in seconds
     */
    public int32 cache_time { get; construct set; }

    /**
     * Offset for the next inline query; pass an empty string if there are no
     * more results
     */
    public string next_offset { get; construct set; }

    public AnswerInlineQuery (
        int64 inline_query_id,
        bool is_personal,
        InlineQueryResultsButton button,
        Gee.ArrayList<InputInlineQueryResult?> results,
        int32 cache_time,
        string next_offset
    ) {
        Object (
            inline_query_id: inline_query_id,
            is_personal: is_personal,
            button: button,
            results: results,
            cache_time: cache_time,
            next_offset: next_offset,
            tdlib_type: "answerInlineQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
