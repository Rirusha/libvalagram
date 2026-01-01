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
 * Contains information about a Telegram Business account
 */
public class TDLib.BusinessInfo : Error {

    /**
     * Location of the business; may be null if none
     */
    public BusinessLocation? location { get; construct set; }

    /**
     * Opening hours of the business; may be null if none. The hours are
     * guaranteed to be valid and has already been split by week days
     */
    public BusinessOpeningHours? opening_hours { get; construct set; }

    /**
     * Opening hours of the business in the local time; may be null if none.
     * The hours are guaranteed to be valid and has already been split by
     * week days.
     * Local time zone identifier will be empty. An updateUserFullInfo update
     * is not triggered when value of this field changes
     */
    public BusinessOpeningHours? local_opening_hours { get; construct set; }

    /**
     * Time left before the business will open the next time, in seconds; 0
     * if unknown. An updateUserFullInfo update is not triggered when value
     * of this field changes
     */
    public int32 next_open_in { get; construct set; }

    /**
     * Time left before the business will {@link Client.close} the next time,
     * in seconds; 0 if unknown. An updateUserFullInfo update is not
     * triggered when value of this field changes
     */
    public int32 next_close_in { get; construct set; }

    /**
     * The greeting message; may be null if none or the Business account is
     * not of the current user
     */
    public BusinessGreetingMessageSettings? greeting_message_settings { get; construct set; }

    /**
     * The away message; may be null if none or the Business account is not
     * of the current user
     */
    public BusinessAwayMessageSettings? away_message_settings { get; construct set; }

    /**
     * Information about start page of the account; may be null if none
     */
    public BusinessStartPage? start_page { get; construct set; }

    public BusinessInfo (
        BusinessLocation? location,
        BusinessOpeningHours? opening_hours,
        BusinessOpeningHours? local_opening_hours,
        int32 next_open_in,
        int32 next_close_in,
        BusinessGreetingMessageSettings? greeting_message_settings,
        BusinessAwayMessageSettings? away_message_settings,
        BusinessStartPage? start_page
    ) {
        Object (
            location: location,
            opening_hours: opening_hours,
            local_opening_hours: local_opening_hours,
            next_open_in: next_open_in,
            next_close_in: next_close_in,
            greeting_message_settings: greeting_message_settings,
            away_message_settings: away_message_settings,
            start_page: start_page,
            tdlib_type: "businessInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
