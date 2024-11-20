/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Creates a new secret chat. Returns the newly created chat
 */
internal class TDLib.CreateNewSecretChat : TDObject {

    /**
     * Identifier of the target user
     */
    public int64 user_id { get; construct set; }

    public CreateNewSecretChat (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "createNewSecretChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
