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
 * Toggles whether a session can accept incoming secret chats
 */
public class TDLib.ToggleSessionCanAcceptSecretChats : TDObject {

    /**
     * Session identifier
     */
    public int64 session_id { get; construct set; }

    /**
     * Pass true to allow accepting secret chats by the session; pass false
     * otherwise
     */
    public bool can_accept_secret_chats { get; construct set; }

    public ToggleSessionCanAcceptSecretChats (
        int64 session_id,
        bool can_accept_secret_chats
    ) {
        Object (
            session_id: session_id,
            can_accept_secret_chats: can_accept_secret_chats,
            tdlib_type: "toggleSessionCanAcceptSecretChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
