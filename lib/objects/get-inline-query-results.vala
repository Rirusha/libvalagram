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
 * Sends an inline query to a bot and returns its results. Returns an
 * error with code 502 if the bot fails to answer the query before the
 * query timeout expires
 */
internal class TDLib.GetInlineQueryResults : TDObject {

    /**
     * Identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Identifier of the chat where the query was sent
     */
    public int64 chat_id { get; construct set; }

    /**
     * Location of the user; pass null if unknown or the bot doesn't need
     * user's location
     */
    public Location user_location { get; construct set; }

    /**
     * Text of the query
     */
    public string query { get; construct set; }

    /**
     * Offset of the first entry to return; use empty string to get the first
     * chunk of results
     */
    public string offset { get; construct set; }

    public GetInlineQueryResults (
        int64 bot_user_id,
        int64 chat_id,
        Location user_location,
        string query,
        string offset
    ) {
        Object (
            bot_user_id: bot_user_id,
            chat_id: chat_id,
            user_location: user_location,
            query: query,
            offset: offset,
            tdlib_type: "getInlineQueryResults",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
