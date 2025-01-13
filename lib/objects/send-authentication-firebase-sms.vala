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
 * Sends Firebase Authentication SMS to the phone number of the user.
 * Works only when the current authorization state is
 * authorizationStateWaitCode and the server returned code of the type
 * authenticationCodeTypeFirebaseAndroid or
 * authenticationCodeTypeFirebaseIos
 */
public class TDLib.SendAuthenticationFirebaseSms : TDObject {

    /**
     * Play Integrity API or SafetyNet Attestation API token for the Android
     * application, or secret from push notification for the iOS application
     */
    public string token { get; construct set; }

    public SendAuthenticationFirebaseSms (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "sendAuthenticationFirebaseSms",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
