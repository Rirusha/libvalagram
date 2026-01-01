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
 * Contains the user's personal details
 */
public class TDLib.PersonalDetails : Error {

    /**
     * First name of the user written in English; 1-255 characters
     */
    public string first_name { get; construct set; }

    /**
     * Middle name of the user written in English; 0-255 characters
     */
    public string middle_name { get; construct set; }

    /**
     * Last name of the user written in English; 1-255 characters
     */
    public string last_name { get; construct set; }

    /**
     * Native first name of the user; 1-255 characters
     */
    public string native_first_name { get; construct set; }

    /**
     * Native middle name of the user; 0-255 characters
     */
    public string native_middle_name { get; construct set; }

    /**
     * Native last name of the user; 1-255 characters
     */
    public string native_last_name { get; construct set; }

    /**
     * Birthdate of the user
     */
    public Date birthdate { get; construct set; }

    /**
     * Gender of the user, "male" or "female"
     */
    public string gender { get; construct set; }

    /**
     * A two-letter ISO 3166-1 alpha-2 country code of the user's country
     */
    public string country_code { get; construct set; }

    /**
     * A two-letter ISO 3166-1 alpha-2 country code of the user's residence
     * country
     */
    public string residence_country_code { get; construct set; }

    public PersonalDetails (
        string first_name,
        string middle_name,
        string last_name,
        string native_first_name,
        string native_middle_name,
        string native_last_name,
        Date birthdate,
        string gender,
        string country_code,
        string residence_country_code
    ) {
        Object (
            first_name: first_name,
            middle_name: middle_name,
            last_name: last_name,
            native_first_name: native_first_name,
            native_middle_name: native_middle_name,
            native_last_name: native_last_name,
            birthdate: birthdate,
            gender: gender,
            country_code: country_code,
            residence_country_code: residence_country_code,
            tdlib_type: "personalDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
