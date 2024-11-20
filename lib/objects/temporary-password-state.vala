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
 * Returns information about the availability of a temporary password,
 * which can be used for payments
 */
public class TDLib.TemporaryPasswordState : Error {

    /**
     * True, if a temporary password is available
     */
    public bool has_password { get; construct set; }

    /**
     * Time left before the temporary password expires, in seconds
     */
    public int32 valid_for { get; construct set; }

    public TemporaryPasswordState (
        bool has_password,
        int32 valid_for
    ) {
        Object (
            has_password: has_password,
            valid_for: valid_for,
            tdlib_type: "temporaryPasswordState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
