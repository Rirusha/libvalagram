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
 * Contains information about found messages, split by days according to
 * the option "utc_time_offset"
 */
public class TDLib.MessageCalendar : Error {

    /**
     * Total number of found messages
     */
    public int32 total_count { get; construct set; }

    /**
     * Information about messages sent
     */
    public Gee.ArrayList<MessageCalendarDay?> days { get; construct set; default = new Gee.ArrayList<MessageCalendarDay?> (); }

    public MessageCalendar (
        int32 total_count,
        Gee.ArrayList<MessageCalendarDay?> days
    ) {
        Object (
            total_count: total_count,
            days: days,
            tdlib_type: "messageCalendar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
