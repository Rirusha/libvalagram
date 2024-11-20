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
 * Changes the 2-step verification password for the current user. If a
 * new recovery email address is specified, then the change will not be
 * applied until the new recovery email address is confirmed
 */
internal class TDLib.SetPassword : TDObject {

    /**
     * Previous 2-step verification password of the user
     */
    public string old_password { get; construct set; }

    /**
     * New 2-step verification password of the user; may be empty to remove
     * the password
     */
    public string new_password { get; construct set; }

    /**
     * New password hint; may be empty
     */
    public string new_hint { get; construct set; }

    /**
     * Pass true to change also the recovery email address
     */
    public bool set_recovery_email_address { get; construct set; }

    /**
     * New recovery email address; may be empty
     */
    public string new_recovery_email_address { get; construct set; }

    public SetPassword (
        string old_password,
        string new_password,
        string new_hint,
        bool set_recovery_email_address,
        string new_recovery_email_address
    ) {
        Object (
            old_password: old_password,
            new_password: new_password,
            new_hint: new_hint,
            set_recovery_email_address: set_recovery_email_address,
            new_recovery_email_address: new_recovery_email_address,
            tdlib_type: "setPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
