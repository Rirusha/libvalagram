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
 * Closes the TDLib instance after a proper logout. Requires an available
 * network connection. All local data will be destroyed. After the logout
 * completes, updateAuthorizationState with authorizationStateClosed will
 * be sent
 */
public class TDLib.LogOut : TDObject {

    public LogOut () {
        Object (
            tdlib_type: "logOut",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
