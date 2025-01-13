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
 * Represents a viewer of a message
 */
public class TDLib.MessageViewer : Error {

    /**
     * User identifier of the viewer
     */
    public int64 user_id { get; construct set; }

    /**
     * Approximate point in time (Unix timestamp) when the message was viewed
     */
    public int32 view_date { get; construct set; }

    public MessageViewer (
        int64 user_id,
        int32 view_date
    ) {
        Object (
            user_id: user_id,
            view_date: view_date,
            tdlib_type: "messageViewer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
