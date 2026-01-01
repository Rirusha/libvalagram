/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Returns information needed to open the main Web App of a bot
 */
public class TDLib.GetMainWebApp : TDObject {

    /**
     * Identifier of the chat in which the Web App is opened; pass 0 if none
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the target bot. If the bot is restricted for the current
     * user, then show an error instead of calling the method
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Start parameter from internalLinkTypeMainWebApp
     */
    public string start_parameter { get; construct set; }

    /**
     * Parameters to use to open the Web App
     */
    public WebAppOpenParameters parameters { get; construct set; }

    public GetMainWebApp (
        int64 chat_id,
        int64 bot_user_id,
        string start_parameter,
        WebAppOpenParameters parameters
    ) {
        Object (
            chat_id: chat_id,
            bot_user_id: bot_user_id,
            start_parameter: start_parameter,
            parameters: parameters,
            tdlib_type: "getMainWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
