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
 * Contains authentication data for an email address
 */
public abstract class TDLib.EmailAddressAuthentication : Error {}

/**
 * An authentication code delivered to a user's email address
 */
public class TDLib.EmailAddressAuthenticationCode : EmailAddressAuthentication {

    /**
     * The code
     */
    public new string code { get; construct set; }

    public EmailAddressAuthenticationCode (
        string code
    ) {
        Object (
            code: code,
            tdlib_type: "emailAddressAuthenticationCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An authentication token received through Apple ID
 */
public class TDLib.EmailAddressAuthenticationAppleId : EmailAddressAuthentication {

    /**
     * The token
     */
    public string token { get; construct set; }

    public EmailAddressAuthenticationAppleId (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "emailAddressAuthenticationAppleId",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An authentication token received through Google ID
 */
public class TDLib.EmailAddressAuthenticationGoogleId : EmailAddressAuthentication {

    /**
     * The token
     */
    public string token { get; construct set; }

    public EmailAddressAuthenticationGoogleId (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "emailAddressAuthenticationGoogleId",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
