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
 * Changes the 2-step verification recovery email address of the user. If
 * a new recovery email address is specified, then the change will not be
 * applied until the new recovery email address is confirmed.
 * If new_recovery_email_address is the same as the email address that is
 * currently set up, this call succeeds immediately and aborts all other
 * requests waiting for an email confirmation
 */
internal class TDLib.SetRecoveryEmailAddress : TDObject {

    /**
     * The 2-step verification password of the current user
     */
    public string password { get; construct set; }

    /**
     * New recovery email address
     */
    public string new_recovery_email_address { get; construct set; }

    public SetRecoveryEmailAddress (
        string password,
        string new_recovery_email_address
    ) {
        Object (
            password: password,
            new_recovery_email_address: new_recovery_email_address,
            tdlib_type: "setRecoveryEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
