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
 * Sets the result of interaction with a Web App and sends corresponding
 * message on behalf of the user to the chat from which the query
 * originated; for bots only
 */
internal class TDLib.AnswerWebAppQuery : TDObject {

    /**
     * Identifier of the Web App query
     */
    public string web_app_query_id { get; construct set; }

    /**
     * The result of the query
     */
    public InputInlineQueryResult result { get; construct set; }

    public AnswerWebAppQuery (
        string web_app_query_id,
        InputInlineQueryResult result
    ) {
        Object (
            web_app_query_id: web_app_query_id,
            result: result,
            tdlib_type: "answerWebAppQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
