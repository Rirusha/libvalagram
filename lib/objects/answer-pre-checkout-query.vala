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
 * Sets the result of a pre-checkout query; for bots only
 */
public class TDLib.AnswerPreCheckoutQuery : TDObject {

    /**
     * Identifier of the pre-checkout query
     */
    public int64 pre_checkout_query_id { get; construct set; }

    /**
     * An error message, empty on success
     */
    public string error_message { get; construct set; }

    public AnswerPreCheckoutQuery (
        int64 pre_checkout_query_id,
        string error_message
    ) {
        Object (
            pre_checkout_query_id: pre_checkout_query_id,
            error_message: error_message,
            tdlib_type: "answerPreCheckoutQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
