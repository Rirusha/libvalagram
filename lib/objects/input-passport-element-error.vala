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
 * Contains the  of an error in a Telegram Passport element; for bots
 * only
 */
public class TDLib.InputPassportElementError : Error {

    /**
     * Type of Telegram Passport element that has the error
     */
    public PassportElementType type_ { get; construct set; }

    /**
     * Error message
     */
    public new string message { get; construct set; }

    /**
     * Error source
     */
    public InputPassportElementErrorSource source { get; construct set; }

    public InputPassportElementError (
        PassportElementType type_,
        string message,
        InputPassportElementErrorSource source
    ) {
        Object (
            type_: type_,
            message: message,
            source: source,
            tdlib_type: "inputPassportElementError",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
