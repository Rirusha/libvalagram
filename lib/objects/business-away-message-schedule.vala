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
 * Describes conditions for sending of away messages by a Telegram
 * Business account
 */
public abstract class TDLib.BusinessAwayMessageSchedule : Error {}

/**
 * Send away messages always
 */
public class TDLib.BusinessAwayMessageScheduleAlways : BusinessAwayMessageSchedule {

    public BusinessAwayMessageScheduleAlways () {
        Object (
            tdlib_type: "businessAwayMessageScheduleAlways",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Send away messages outside of the business opening hours
 */
public class TDLib.BusinessAwayMessageScheduleOutsideOfOpeningHours : BusinessAwayMessageSchedule {

    public BusinessAwayMessageScheduleOutsideOfOpeningHours () {
        Object (
            tdlib_type: "businessAwayMessageScheduleOutsideOfOpeningHours",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Send away messages only in the specified time span
 */
public class TDLib.BusinessAwayMessageScheduleCustom : BusinessAwayMessageSchedule {

    /**
     * Point in time (Unix timestamp) when the away messages will start to be
     * sent
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the away messages will stop to be
     * sent
     */
    public int32 end_date { get; construct set; }

    public BusinessAwayMessageScheduleCustom (
        int32 start_date,
        int32 end_date
    ) {
        Object (
            start_date: start_date,
            end_date: end_date,
            tdlib_type: "businessAwayMessageScheduleCustom",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
