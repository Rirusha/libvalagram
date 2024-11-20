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
 * Returns information about a Web App by its short name. Returns a 404
 * error if the Web App is not found
 */
internal class TDLib.SearchWebApp : TDObject {

    /**
     * Identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Short name of the Web App
     */
    public string web_app_short_name { get; construct set; }

    public SearchWebApp (
        int64 bot_user_id,
        string web_app_short_name
    ) {
        Object (
            bot_user_id: bot_user_id,
            web_app_short_name: web_app_short_name,
            tdlib_type: "searchWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
