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
 * Contains information about a Telegram Passport elements and
 * corresponding errors
 */
public class TDLib.PassportElementsWithErrors : Error {

    /**
     * Telegram Passport elements
     */
    public Gee.ArrayList<PassportElement?> elements { get; construct set; default = new Gee.ArrayList<PassportElement?> (); }

    /**
     * Errors in the elements that are already available
     */
    public Gee.ArrayList<PassportElementError?> errors { get; construct set; default = new Gee.ArrayList<PassportElementError?> (); }

    public PassportElementsWithErrors (
        Gee.ArrayList<PassportElement?> elements,
        Gee.ArrayList<PassportElementError?> errors
    ) {
        Object (
            elements: elements,
            errors: errors,
            tdlib_type: "passportElementsWithErrors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
