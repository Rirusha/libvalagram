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
 * Information about the email address authentication code that was sent
 */
public class TDLib.EmailAddressAuthenticationCodeInfo : Error {

    /**
     * Pattern of the email address to which an authentication code was sent
     */
    public string email_address_pattern { get; construct set; }

    /**
     * Length of the code; 0 if unknown
     */
    public int32 length { get; construct set; }

    public EmailAddressAuthenticationCodeInfo (
        string email_address_pattern,
        int32 length
    ) {
        Object (
            email_address_pattern: email_address_pattern,
            length: length,
            tdlib_type: "emailAddressAuthenticationCodeInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
