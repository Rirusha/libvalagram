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
 * Contains a list of messages
 */
public class TDLib.Messages : Error {

    /**
     * Approximate total number of messages found
     */
    public int32 total_count { get; construct set; }

    /**
     * List of messages; messages may be null
     */
    public Gee.ArrayList<Message?>? messages { get; construct set; default = new Gee.ArrayList<Message?> (); }

    public Messages (
        int32 total_count,
        Gee.ArrayList<Message?>? messages
    ) {
        Object (
            total_count: total_count,
            messages: messages,
            tdlib_type: "messages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
