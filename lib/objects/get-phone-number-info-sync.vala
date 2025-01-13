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
 * Returns information about a phone number by its prefix synchronously.
 * getCountries must be called at least once after changing localization
 * to the specified language if properly localized country information is
 * expected. Can be called synchronously
 */
internal class TDLib.GetPhoneNumberInfoSync : TDObject {

    /**
     * A two-letter ISO 639-1 language code for country information
     * localization
     */
    public string language_code { get; construct set; }

    /**
     * The phone number prefix
     */
    public string phone_number_prefix { get; construct set; }

    public GetPhoneNumberInfoSync (
        string language_code,
        string phone_number_prefix
    ) {
        Object (
            language_code: language_code,
            phone_number_prefix: phone_number_prefix,
            tdlib_type: "getPhoneNumberInfoSync",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
