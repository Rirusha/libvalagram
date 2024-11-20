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
 * Describes an address of a location
 */
public class TDLib.LocationAddress : Error {

    /**
     * A two-letter ISO 3166-1 alpha-2 country code
     */
    public string country_code { get; construct set; }

    /**
     * State, if applicable; empty if unknown
     */
    public string state { get; construct set; }

    /**
     * City; empty if unknown
     */
    public string city { get; construct set; }

    /**
     * The address; empty if unknown
     */
    public string street { get; construct set; }

    public LocationAddress (
        string country_code,
        string state,
        string city,
        string street
    ) {
        Object (
            country_code: country_code,
            state: state,
            city: city,
            street: street,
            tdlib_type: "locationAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
