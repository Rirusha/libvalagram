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
 * Changes the list of {@link Client.close} friends of the current user
 */
public class TDLib.SetCloseFriends : TDObject {

    /**
     * User identifiers of {@link Client.close} friends; the users must be
     * contacts of the current user
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public SetCloseFriends (
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            user_ids: user_ids,
            tdlib_type: "setCloseFriends",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
