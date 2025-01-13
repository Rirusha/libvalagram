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
 * Returns an existing chat corresponding to a given user
 */
internal class TDLib.CreatePrivateChat : TDObject {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Pass true to create the chat without a network request. In this case
     * all information about the chat except its type, title and photo can be
     * incorrect
     */
    public bool force { get; construct set; }

    public CreatePrivateChat (
        int64 user_id,
        bool force
    ) {
        Object (
            user_id: user_id,
            force: force,
            tdlib_type: "createPrivateChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
