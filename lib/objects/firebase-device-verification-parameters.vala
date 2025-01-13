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
 * Describes parameters to be used for device verification
 */
public abstract class TDLib.FirebaseDeviceVerificationParameters : Error {}

/**
 * Device verification must be performed with the SafetyNet Attestation
 * API
 */
public class TDLib.FirebaseDeviceVerificationParametersSafetyNet : FirebaseDeviceVerificationParameters {

    /**
     * Nonce to pass to the SafetyNet Attestation API
     */
    public Bytes nonce { get; construct set; }

    public FirebaseDeviceVerificationParametersSafetyNet (
        Bytes nonce
    ) {
        Object (
            nonce: nonce,
            tdlib_type: "firebaseDeviceVerificationParametersSafetyNet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Device verification must be performed with the classic Play Integrity
 * verification
 * (https://developer.android.com/google/play/integrity/classic)
 */
public class TDLib.FirebaseDeviceVerificationParametersPlayIntegrity : FirebaseDeviceVerificationParameters {

    /**
     * Base64url-encoded nonce to pass to the Play Integrity API
     */
    public string nonce { get; construct set; }

    /**
     * Cloud project number to pass to the Play Integrity API
     */
    public int64 cloud_project_number { get; construct set; }

    public FirebaseDeviceVerificationParametersPlayIntegrity (
        string nonce,
        int64 cloud_project_number
    ) {
        Object (
            nonce: nonce,
            cloud_project_number: cloud_project_number,
            tdlib_type: "firebaseDeviceVerificationParametersPlayIntegrity",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
