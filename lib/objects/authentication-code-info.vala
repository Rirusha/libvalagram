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
 * Information about the authentication code that was sent
 */
public class TDLib.AuthenticationCodeInfo : Error {

    /**
     * A phone number that is being authenticated
     */
    public string phone_number { get; construct set; }

    /**
     * The way the code was sent to the user
     */
    public AuthenticationCodeType type_ { get; construct set; }

    /**
     * The way the next code will be sent to the user; may be null
     */
    public AuthenticationCodeType? next_type { get; construct set; }

    /**
     * Timeout before the code can be re-sent, in seconds
     */
    public int32 timeout { get; construct set; }

    public AuthenticationCodeInfo (
        string phone_number,
        AuthenticationCodeType type_,
        AuthenticationCodeType? next_type,
        int32 timeout
    ) {
        Object (
            phone_number: phone_number,
            type_: type_,
            next_type: next_type,
            timeout: timeout,
            tdlib_type: "authenticationCodeInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
