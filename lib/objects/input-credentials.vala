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
 * Contains information about the payment method chosen by the user
 */
public abstract class TDLib.InputCredentials : Error {}

/**
 * Applies if a user chooses some previously saved payment credentials.
 * To use their previously saved credentials, the user must have a valid
 * temporary password
 */
public class TDLib.InputCredentialsSaved : InputCredentials {

    /**
     * Identifier of the saved credentials
     */
    public string saved_credentials_id { get; construct set; }

    public InputCredentialsSaved (
        string saved_credentials_id
    ) {
        Object (
            saved_credentials_id: saved_credentials_id,
            tdlib_type: "inputCredentialsSaved",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Applies if a user enters new credentials on a payment provider website
 */
public class TDLib.InputCredentialsNew : InputCredentials {

    /**
     * JSON-encoded data with the credential identifier from the payment
     * provider
     */
    public string data { get; construct set; }

    /**
     * True, if the credential identifier can be saved on the server side
     */
    public bool allow_save { get; construct set; }

    public InputCredentialsNew (
        string data,
        bool allow_save
    ) {
        Object (
            data: data,
            allow_save: allow_save,
            tdlib_type: "inputCredentialsNew",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Applies if a user enters new credentials using Apple Pay
 */
public class TDLib.InputCredentialsApplePay : InputCredentials {

    /**
     * JSON-encoded data with the credential identifier
     */
    public string data { get; construct set; }

    public InputCredentialsApplePay (
        string data
    ) {
        Object (
            data: data,
            tdlib_type: "inputCredentialsApplePay",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Applies if a user enters new credentials using Google Pay
 */
public class TDLib.InputCredentialsGooglePay : InputCredentials {

    /**
     * JSON-encoded data with the credential identifier
     */
    public string data { get; construct set; }

    public InputCredentialsGooglePay (
        string data
    ) {
        Object (
            data: data,
            tdlib_type: "inputCredentialsGooglePay",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
