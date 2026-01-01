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
 * Finishes user registration. Works only when the current authorization
 * state is authorizationStateWaitRegistration
 */
public class TDLib.RegisterUser : TDObject {

    /**
     * The first name of the user; 1-64 characters
     */
    public string first_name { get; construct set; }

    /**
     * The last name of the user; 0-64 characters
     */
    public string last_name { get; construct set; }

    /**
     * Pass true to disable notification about the current user joining
     * Telegram for other users that added them to contact list
     */
    public bool disable_notification { get; construct set; }

    public RegisterUser (
        string first_name,
        string last_name,
        bool disable_notification
    ) {
        Object (
            first_name: first_name,
            last_name: last_name,
            disable_notification: disable_notification,
            tdlib_type: "registerUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
