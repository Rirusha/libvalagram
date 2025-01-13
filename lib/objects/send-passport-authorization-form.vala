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
 * Sends a Telegram Passport authorization form, effectively sharing data
 * with the service. This method must be called after
 * getPassportAuthorizationFormAvailableElements if some previously
 * available elements are going to be reused
 */
internal class TDLib.SendPassportAuthorizationForm : TDObject {

    /**
     * Authorization form identifier
     */
    public int32 authorization_form_id { get; construct set; }

    /**
     * Types of Telegram Passport elements chosen by user to complete the
     * authorization form
     */
    public Gee.ArrayList<PassportElementType?> types { get; construct set; default = new Gee.ArrayList<PassportElementType?> (); }

    public SendPassportAuthorizationForm (
        int32 authorization_form_id,
        Gee.ArrayList<PassportElementType?> types
    ) {
        Object (
            authorization_form_id: authorization_form_id,
            types: types,
            tdlib_type: "sendPassportAuthorizationForm",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
