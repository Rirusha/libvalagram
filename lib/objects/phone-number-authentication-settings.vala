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
 * Contains settings for the authentication of the user's phone number
 */
public class TDLib.PhoneNumberAuthenticationSettings : Error {

    /**
     * Pass true if the authentication code may be sent via a flash call to
     * the specified phone number
     */
    public bool allow_flash_call { get; construct set; }

    /**
     * Pass true if the authentication code may be sent via a missed call to
     * the specified phone number
     */
    public bool allow_missed_call { get; construct set; }

    /**
     * Pass true if the authenticated phone number is used on the current
     * device
     */
    public bool is_current_phone_number { get; construct set; }

    /**
     * Pass true if there is a SIM card in the current device, but it is not
     * possible to check whether phone number matches
     */
    public bool has_unknown_phone_number { get; construct set; }

    /**
     * For official applications only. True, if the application can use
     * Android SMS Retriever API (requires Google Play Services >= 10.2) to
     * automatically receive the authentication code from the SMS. See
     * [[https://developers.google.com/identity/sms-retriever/]] for more
     * details
     */
    public bool allow_sms_retriever_api { get; construct set; }

    /**
     * For official Android and iOS applications only; pass null otherwise.
     * Settings for Firebase Authentication
     */
    public FirebaseAuthenticationSettings firebase_authentication_settings { get; construct set; }

    /**
     * List of up to 20 authentication tokens, recently received in
     * updateOption("authentication_token") in previously logged out sessions
     */
    public Gee.ArrayList<string?> authentication_tokens { get; construct set; default = new Gee.ArrayList<string?> (); }

    public PhoneNumberAuthenticationSettings (
        bool allow_flash_call,
        bool allow_missed_call,
        bool is_current_phone_number,
        bool has_unknown_phone_number,
        bool allow_sms_retriever_api,
        FirebaseAuthenticationSettings firebase_authentication_settings,
        Gee.ArrayList<string?> authentication_tokens
    ) {
        Object (
            allow_flash_call: allow_flash_call,
            allow_missed_call: allow_missed_call,
            is_current_phone_number: is_current_phone_number,
            has_unknown_phone_number: has_unknown_phone_number,
            allow_sms_retriever_api: allow_sms_retriever_api,
            firebase_authentication_settings: firebase_authentication_settings,
            authentication_tokens: authentication_tokens,
            tdlib_type: "phoneNumberAuthenticationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
