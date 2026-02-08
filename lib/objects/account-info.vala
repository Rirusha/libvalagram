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
 * Contains basic information about another user who started a chat with
 * the current user
 */
public class TDLib.AccountInfo : Error {

    /**
     * Month when the user was registered in Telegram; 0-12; may be 0 if
     * unknown
     */
    public int32 registration_month { get; construct set; }

    /**
     * Year when the user was registered in Telegram; 0-9999; may be 0 if
     * unknown
     */
    public int32 registration_year { get; construct set; }

    /**
     * A two-letter ISO 3166-1 alpha-2 country code based on the phone number
     * of the user; may be empty if unknown
     */
    public string phone_number_country_code { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user changed name last time; 0
     * if unknown
     */
    public int32 last_name_change_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user changed photo last time;
     * 0 if unknown
     */
    public int32 last_photo_change_date { get; construct set; }

    public AccountInfo (
        int32 registration_month,
        int32 registration_year,
        string phone_number_country_code,
        int32 last_name_change_date,
        int32 last_photo_change_date
    ) {
        Object (
            registration_month: registration_month,
            registration_year: registration_year,
            phone_number_country_code: phone_number_country_code,
            last_name_change_date: last_name_change_date,
            last_photo_change_date: last_photo_change_date,
            tdlib_type: "accountInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
