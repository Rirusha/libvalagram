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
 * Represents the results of the inline query. Use
 * {@link Client.send_inline_query_result_message} to send the result of
 * the query
 */
public class TDLib.InlineQueryResults : Error {

    /**
     * Unique identifier of the inline query
     */
    public int64 inline_query_id { get; construct set; }

    /**
     * Button to be shown above inline query results; may be null
     */
    public InlineQueryResultsButton? button { get; construct set; }

    /**
     * Results of the query
     */
    public Gee.ArrayList<InlineQueryResult?> results { get; construct set; default = new Gee.ArrayList<InlineQueryResult?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public InlineQueryResults (
        int64 inline_query_id,
        InlineQueryResultsButton? button,
        Gee.ArrayList<InlineQueryResult?> results,
        string next_offset
    ) {
        Object (
            inline_query_id: inline_query_id,
            button: button,
            results: results,
            next_offset: next_offset,
            tdlib_type: "inlineQueryResults",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
