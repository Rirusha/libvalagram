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
 * Adds an element to the user's Telegram Passport. May return an error
 * with a message "PHONE_VERIFICATION_NEEDED" or
 * "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen
 * email address must be verified first
 */
public class TDLib.SetPassportElement : TDObject {

    /**
     * Input Telegram Passport element
     */
    public InputPassportElement element { get; construct set; }

    /**
     * The 2-step verification password of the current user
     */
    public string password { get; construct set; }

    public SetPassportElement (
        InputPassportElement element,
        string password
    ) {
        Object (
            element: element,
            password: password,
            tdlib_type: "setPassportElement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
