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
 * Contains the  of an error in a Telegram Passport element
 */
public class TDLib.PassportElementError : Error {

    /**
     * Type of the Telegram Passport element which has the error
     */
    public PassportElementType type_ { get; construct set; }

    /**
     * Error message
     */
    public string message { get; construct set; }

    /**
     * Error source
     */
    public PassportElementErrorSource source { get; construct set; }

    public PassportElementError (
        PassportElementType type_,
        string message,
        PassportElementErrorSource source
    ) {
        Object (
            type_: type_,
            message: message,
            source: source,
            tdlib_type: "passportElementError",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
