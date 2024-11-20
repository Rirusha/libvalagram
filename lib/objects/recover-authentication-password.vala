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
 * Recovers the 2-step verification password with a password recovery
 * code sent to an email address that was previously set up. Works only
 * when the current authorization state is authorizationStateWaitPassword
 */
internal class TDLib.RecoverAuthenticationPassword : TDObject {

    /**
     * Recovery code to check
     */
    public string recovery_code { get; construct set; }

    /**
     * New 2-step verification password of the user; may be empty to remove
     * the password
     */
    public string new_password { get; construct set; }

    /**
     * New password hint; may be empty
     */
    public string new_hint { get; construct set; }

    public RecoverAuthenticationPassword (
        string recovery_code,
        string new_password,
        string new_hint
    ) {
        Object (
            recovery_code: recovery_code,
            new_password: new_password,
            new_hint: new_hint,
            tdlib_type: "recoverAuthenticationPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
