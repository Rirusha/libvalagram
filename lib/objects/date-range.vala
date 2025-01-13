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
 * Represents a date range
 */
public class TDLib.DateRange : Error {

    /**
     * Point in time (Unix timestamp) at which the date range begins
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) at which the date range ends
     */
    public int32 end_date { get; construct set; }

    public DateRange (
        int32 start_date,
        int32 end_date
    ) {
        Object (
            start_date: start_date,
            end_date: end_date,
            tdlib_type: "dateRange",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
