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
 * Sets the phone number of the user and sends an authentication code to
 * the user. Works only when the current authorization state is
 * authorizationStateWaitPhoneNumber,
 * or if there is no pending authentication query and the current
 * authorization state is authorizationStateWaitPremiumPurchase,
 * authorizationStateWaitEmailAddress,
 * authorizationStateWaitEmailCode, authorizationStateWaitCode,
 * authorizationStateWaitRegistration, or authorizationStateWaitPassword
 */
public class TDLib.SetAuthenticationPhoneNumber : TDObject {

    /**
     * The phone number of the user, in international format
     */
    public string phone_number { get; construct set; }

    /**
     * Settings for the authentication of the user's phone number; pass null
     * to use default settings
     */
    public PhoneNumberAuthenticationSettings settings { get; construct set; }

    public SetAuthenticationPhoneNumber (
        string phone_number,
        PhoneNumberAuthenticationSettings settings
    ) {
        Object (
            phone_number: phone_number,
            settings: settings,
            tdlib_type: "setAuthenticationPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
