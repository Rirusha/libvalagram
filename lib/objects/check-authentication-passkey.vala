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
 * Checks a passkey to log in to the corresponding account. Call
 * {@link Client.get_authentication_passkey_parameters} to get parameters
 * for the passkey. Works only when the current authorization state is
 * authorizationStateWaitPhoneNumber or
 * authorizationStateWaitOtherDeviceConfirmation, or if there is no
 * pending authentication query and the current authorization state is
 * authorizationStateWaitPremiumPurchase,
 * authorizationStateWaitEmailAddress, authorizationStateWaitEmailCode,
 * authorizationStateWaitCode, authorizationStateWaitRegistration, or
 * authorizationStateWaitPassword
 */
public class TDLib.CheckAuthenticationPasskey : TDObject {

    /**
     * Base64url-encoded identifier of the credential
     */
    public string credential_id { get; construct set; }

    /**
     * JSON-encoded client data
     */
    public string client_data { get; construct set; }

    /**
     * Authenticator data of the application that created the credential
     */
    public Bytes authenticator_data { get; construct set; }

    /**
     * Cryptographic signature of the credential
     */
    public Bytes signature { get; construct set; }

    /**
     * User handle of the passkey
     */
    public Bytes user_handle { get; construct set; }

    public CheckAuthenticationPasskey (
        string credential_id,
        string client_data,
        Bytes authenticator_data,
        Bytes signature,
        Bytes user_handle
    ) {
        Object (
            credential_id: credential_id,
            client_data: client_data,
            authenticator_data: authenticator_data,
            signature: signature,
            user_handle: user_handle,
            tdlib_type: "checkAuthenticationPasskey",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
