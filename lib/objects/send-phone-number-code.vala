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
 * Sends a code to the specified phone number. Aborts previous phone
 * number verification if there was one. On success, returns information
 * about the sent code
 */
public class TDLib.SendPhoneNumberCode : TDObject {

    /**
     * The phone number, in international format
     */
    public string phone_number { get; construct set; }

    /**
     * Settings for the authentication of the user's phone number; pass null
     * to use default settings
     */
    public PhoneNumberAuthenticationSettings settings { get; construct set; }

    /**
     * Type of the request for which the code is sent
     */
    public PhoneNumberCodeType type_ { get; construct set; }

    public SendPhoneNumberCode (
        string phone_number,
        PhoneNumberAuthenticationSettings settings,
        PhoneNumberCodeType type_
    ) {
        Object (
            phone_number: phone_number,
            settings: settings,
            type_: type_,
            tdlib_type: "sendPhoneNumberCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
