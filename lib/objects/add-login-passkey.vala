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
 * Adds a passkey allowed to be used for the login by the current user
 * and returns the added passkey. Call
 * {@link Client.get_passkey_parameters} to get parameters for creating
 * of the passkey
 */
public class TDLib.AddLoginPasskey : TDObject {

    /**
     * JSON-encoded client data
     */
    public string client_data { get; construct set; }

    /**
     * Passkey attestation object
     */
    public Bytes attestation_object { get; construct set; }

    public AddLoginPasskey (
        string client_data,
        Bytes attestation_object
    ) {
        Object (
            client_data: client_data,
            attestation_object: attestation_object,
            tdlib_type: "addLoginPasskey",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
