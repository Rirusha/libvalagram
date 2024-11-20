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
 * Contains information about found messages sent on a specific day
 */
public class TDLib.MessageCalendarDay : Error {

    /**
     * Total number of found messages sent on the day
     */
    public int32 total_count { get; construct set; }

    /**
     * First message sent on the day
     */
    public Message message { get; construct set; }

    public MessageCalendarDay (
        int32 total_count,
        Message message
    ) {
        Object (
            total_count: total_count,
            message: message,
            tdlib_type: "messageCalendarDay",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
