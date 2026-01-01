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
 * Contains information about a phone number
 */
public class TDLib.PhoneNumberInfo : Error {

    /**
     * Information about the country to which the phone number belongs; may
     * be null
     */
    public CountryInfo? country { get; construct set; }

    /**
     * The part of the phone number denoting country calling code or its part
     */
    public string country_calling_code { get; construct set; }

    /**
     * The phone number without country calling code formatted accordingly to
     * local rules. Expected digits are returned as '-', but even more digits
     * might be entered by the user
     */
    public string formatted_phone_number { get; construct set; }

    /**
     * True, if the phone number was bought at [[https://fragment.com]] and
     * isn't tied to a SIM card. Information about the phone number can be
     * received using {@link Client.get_collectible_item_info}
     */
    public bool is_anonymous { get; construct set; }

    public PhoneNumberInfo (
        CountryInfo? country,
        string country_calling_code,
        string formatted_phone_number,
        bool is_anonymous
    ) {
        Object (
            country: country,
            country_calling_code: country_calling_code,
            formatted_phone_number: formatted_phone_number,
            is_anonymous: is_anonymous,
            tdlib_type: "phoneNumberInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
