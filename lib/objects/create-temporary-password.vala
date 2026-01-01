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
 * Creates a new temporary password for processing payments
 */
public class TDLib.CreateTemporaryPassword : TDObject {

    /**
     * The 2-step verification password of the current user
     */
    public string password { get; construct set; }

    /**
     * Time during which the temporary password will be valid, in seconds;
     * must be between 60 and 86400
     */
    public int32 valid_for { get; construct set; }

    public CreateTemporaryPassword (
        string password,
        int32 valid_for
    ) {
        Object (
            password: password,
            valid_for: valid_for,
            tdlib_type: "createTemporaryPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
