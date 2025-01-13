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
 * Contains encrypted Telegram Passport data credentials
 */
public class TDLib.EncryptedCredentials : Error {

    /**
     * The encrypted credentials
     */
    public Bytes data { get; construct set; }

    /**
     * The decrypted data hash
     */
    public Bytes hash { get; construct set; }

    /**
     * Secret for data decryption, encrypted with the service's public key
     */
    public Bytes secret { get; construct set; }

    public EncryptedCredentials (
        Bytes data,
        Bytes hash,
        Bytes secret
    ) {
        Object (
            data: data,
            hash: hash,
            secret: secret,
            tdlib_type: "encryptedCredentials",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
