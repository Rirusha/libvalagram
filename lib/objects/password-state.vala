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
 * Represents the current state of 2-step verification
 */
public class TDLib.PasswordState : Error {

    /**
     * True, if a 2-step verification password is set
     */
    public bool has_password { get; construct set; }

    /**
     * Hint for the password; may be empty
     */
    public string password_hint { get; construct set; }

    /**
     * True, if a recovery email is set
     */
    public bool has_recovery_email_address { get; construct set; }

    /**
     * True, if some Telegram Passport elements were saved
     */
    public bool has_passport_data { get; construct set; }

    /**
     * Information about the recovery email address to which the confirmation
     * email was sent; may be null
     */
    public EmailAddressAuthenticationCodeInfo? recovery_email_address_code_info { get; construct set; }

    /**
     * Pattern of the email address set up for logging in
     */
    public string login_email_address_pattern { get; construct set; }

    /**
     * If not 0, point in time (Unix timestamp) after which the 2-step
     * verification password can be reset immediately using resetPassword
     */
    public int32 pending_reset_date { get; construct set; }

    public PasswordState (
        bool has_password,
        string password_hint,
        bool has_recovery_email_address,
        bool has_passport_data,
        EmailAddressAuthenticationCodeInfo? recovery_email_address_code_info,
        string login_email_address_pattern,
        int32 pending_reset_date
    ) {
        Object (
            has_password: has_password,
            password_hint: password_hint,
            has_recovery_email_address: has_recovery_email_address,
            has_passport_data: has_passport_data,
            recovery_email_address_code_info: recovery_email_address_code_info,
            login_email_address_pattern: login_email_address_pattern,
            pending_reset_date: pending_reset_date,
            tdlib_type: "passwordState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
