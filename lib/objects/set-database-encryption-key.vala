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
 * Changes the database encryption key. Usually the encryption key is
 * never changed and is stored in some OS keychain
 */
public class TDLib.SetDatabaseEncryptionKey : TDObject {

    /**
     * New encryption key
     */
    public Bytes new_encryption_key { get; construct set; }

    public SetDatabaseEncryptionKey (
        Bytes new_encryption_key
    ) {
        Object (
            new_encryption_key: new_encryption_key,
            tdlib_type: "setDatabaseEncryptionKey",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
