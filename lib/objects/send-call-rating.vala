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
 * Sends a call rating
 */
public class TDLib.SendCallRating : TDObject {

    /**
     * Call identifier
     */
    public int32 call_id { get; construct set; }

    /**
     * Call rating; 1-5
     */
    public int32 rating { get; construct set; }

    /**
     * An optional user comment if the rating is less than 5
     */
    public string comment { get; construct set; }

    /**
     * List of the exact types of problems with the call, specified by the
     * user
     */
    public Gee.ArrayList<CallProblem?> problems { get; construct set; default = new Gee.ArrayList<CallProblem?> (); }

    public SendCallRating (
        int32 call_id,
        int32 rating,
        string comment,
        Gee.ArrayList<CallProblem?> problems
    ) {
        Object (
            call_id: call_id,
            rating: rating,
            comment: comment,
            problems: problems,
            tdlib_type: "sendCallRating",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
