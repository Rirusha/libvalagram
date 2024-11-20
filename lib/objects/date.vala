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
 * Represents a date according to the Gregorian calendar
 */
public class TDLib.Date : Error {

    /**
     * Day of the month; 1-31
     */
    public int32 day { get; construct set; }

    /**
     * Month; 1-12
     */
    public int32 month { get; construct set; }

    /**
     * Year; 1-9999
     */
    public int32 year { get; construct set; }

    public Date (
        int32 day,
        int32 month,
        int32 year
    ) {
        Object (
            day: day,
            month: month,
            year: year,
            tdlib_type: "date",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
