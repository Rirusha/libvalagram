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
 * Application or reCAPTCHA verification has been completed. Can be
 * called before authorization
 */
public class TDLib.SetApplicationVerificationToken : TDObject {

    /**
     * Unique identifier for the verification process as received from
     * updateApplicationVerificationRequired or
     * updateApplicationRecaptchaVerificationRequired
     */
    public int64 verification_id { get; construct set; }

    /**
     * Play Integrity API token for the Android application, or secret from
     * push notification for the iOS application for application
     * verification, or reCAPTCHA token for reCAPTCHA verifications;
     * pass an empty string to abort verification and receive the error
     * "VERIFICATION_FAILED" for the request
     */
    public string token { get; construct set; }

    public SetApplicationVerificationToken (
        int64 verification_id,
        string token
    ) {
        Object (
            verification_id: verification_id,
            token: token,
            tdlib_type: "setApplicationVerificationToken",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
