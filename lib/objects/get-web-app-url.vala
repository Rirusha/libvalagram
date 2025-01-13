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
 * Returns an HTTPS URL of a Web App to open from the side menu, a
 * keyboardButtonTypeWebApp button, or an
 * inlineQueryResultsButtonTypeWebApp button
 */
internal class TDLib.GetWebAppUrl : TDObject {

    /**
     * Identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * The URL from a keyboardButtonTypeWebApp button,
     * inlineQueryResultsButtonTypeWebApp button, or an empty string when the
     * bot is opened from the side menu
     */
    public string url { get; construct set; }

    /**
     * Parameters to use to open the Web App
     */
    public WebAppOpenParameters parameters { get; construct set; }

    public GetWebAppUrl (
        int64 bot_user_id,
        string url,
        WebAppOpenParameters parameters
    ) {
        Object (
            bot_user_id: bot_user_id,
            url: url,
            parameters: parameters,
            tdlib_type: "getWebAppUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
