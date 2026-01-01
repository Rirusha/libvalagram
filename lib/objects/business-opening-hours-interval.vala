/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Describes an interval of time when the business is open
 */
public class TDLib.BusinessOpeningHoursInterval : Error {

    /**
     * The minute's sequence number in a week, starting on Monday, marking
     * the start of the time interval during which the business is open;
     * 0-7*24*60
     */
    public int32 start_minute { get; construct set; }

    /**
     * The minute's sequence number in a week, starting on Monday, marking
     * the end of the time interval during which the business is open;
     * 1-8*24*60
     */
    public int32 end_minute { get; construct set; }

    public BusinessOpeningHoursInterval (
        int32 start_minute,
        int32 end_minute
    ) {
        Object (
            start_minute: start_minute,
            end_minute: end_minute,
            tdlib_type: "businessOpeningHoursInterval",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
