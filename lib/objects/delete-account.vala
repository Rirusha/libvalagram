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
 * Deletes the account of the current user, deleting all information
 * associated with the user from the server. The phone number of the
 * account can be used to create a new account.
 * Can be called before authorization when the current authorization
 * state is authorizationStateWaitPassword
 */
internal class TDLib.DeleteAccount : TDObject {

    /**
     * The reason why the account was deleted; optional
     */
    public string reason { get; construct set; }

    /**
     * The 2-step verification password of the current user. If the current
     * user isn't authorized, then an empty string can be passed and account
     * deletion can be canceled within one week
     */
    public string password { get; construct set; }

    public DeleteAccount (
        string reason,
        string password
    ) {
        Object (
            reason: reason,
            password: password,
            tdlib_type: "deleteAccount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
