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
 * Checks the authentication token of a bot; to log in as a bot. Works
 * only when the current authorization state is
 * authorizationStateWaitPhoneNumber. Can be used instead of
 * setAuthenticationPhoneNumber and checkAuthenticationCode to log in
 */
internal class TDLib.CheckAuthenticationBotToken : TDObject {

    /**
     * The bot token
     */
    public string token { get; construct set; }

    public CheckAuthenticationBotToken (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "checkAuthenticationBotToken",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
