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
 * Returns an HTTPS URL of a Web App to open after a link of the type
 * internalLinkTypeWebApp is clicked
 */
public class TDLib.GetWebAppLinkUrl : TDObject {

    /**
     * Identifier of the chat in which the link was clicked; pass 0 if none
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Short name of the Web App
     */
    public string web_app_short_name { get; construct set; }

    /**
     * Start parameter from internalLinkTypeWebApp
     */
    public string start_parameter { get; construct set; }

    /**
     * Pass true if the current user allowed the bot to send them messages
     */
    public bool allow_write_access { get; construct set; }

    /**
     * Parameters to use to open the Web App
     */
    public WebAppOpenParameters parameters { get; construct set; }

    public GetWebAppLinkUrl (
        int64 chat_id,
        int64 bot_user_id,
        string web_app_short_name,
        string start_parameter,
        bool allow_write_access,
        WebAppOpenParameters parameters
    ) {
        Object (
            chat_id: chat_id,
            bot_user_id: bot_user_id,
            web_app_short_name: web_app_short_name,
            start_parameter: start_parameter,
            allow_write_access: allow_write_access,
            parameters: parameters,
            tdlib_type: "getWebAppLinkUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
