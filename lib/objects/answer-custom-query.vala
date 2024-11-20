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
 * Answers a custom query; for bots only
 */
internal class TDLib.AnswerCustomQuery : TDObject {

    /**
     * Identifier of a custom query
     */
    public int64 custom_query_id { get; construct set; }

    /**
     * JSON-serialized answer to the query
     */
    public string data { get; construct set; }

    public AnswerCustomQuery (
        int64 custom_query_id,
        string data
    ) {
        Object (
            custom_query_id: custom_query_id,
            data: data,
            tdlib_type: "answerCustomQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
