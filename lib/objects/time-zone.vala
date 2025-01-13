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
 * Describes a time zone
 */
public class TDLib.TimeZone : Error {

    /**
     * Unique time zone identifier
     */
    public string id_ { get; construct set; }

    /**
     * Time zone name
     */
    public string name { get; construct set; }

    /**
     * Current UTC time offset for the time zone
     */
    public int32 utc_time_offset { get; construct set; }

    public TimeZone (
        string id_,
        string name,
        int32 utc_time_offset
    ) {
        Object (
            id_: id_,
            name: name,
            utc_time_offset: utc_time_offset,
            tdlib_type: "timeZone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
