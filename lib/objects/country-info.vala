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
 * Contains information about a country
 */
public class TDLib.CountryInfo : Error {

    /**
     * A two-letter ISO 3166-1 alpha-2 country code
     */
    public string country_code { get; construct set; }

    /**
     * Native name of the country
     */
    public string name { get; construct set; }

    /**
     * English name of the country
     */
    public string english_name { get; construct set; }

    /**
     * True, if the country must be hidden from the list of all countries
     */
    public bool is_hidden { get; construct set; }

    /**
     * List of country calling codes
     */
    public Gee.ArrayList<string?> calling_codes { get; construct set; default = new Gee.ArrayList<string?> (); }

    public CountryInfo (
        string country_code,
        string name,
        string english_name,
        bool is_hidden,
        Gee.ArrayList<string?> calling_codes
    ) {
        Object (
            country_code: country_code,
            name: name,
            english_name: english_name,
            is_hidden: is_hidden,
            calling_codes: calling_codes,
            tdlib_type: "countryInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
